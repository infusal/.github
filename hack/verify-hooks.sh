#!/bin/sh
# Verify that .commitlint/hooks/commit-msg behaves correctly under a stripped
# environment (mimicking VSCode's Git extension, which does not source the
# user's shell profile). Exits non-zero on any deviation.
#
# Commit-msg-only variant of infusal/go-template's hack/verify-hooks.sh, for the
# repos whose pre-commit contract differs from go-template's or which have no
# pre-commit at all. TEST 1 and TEST 4 are the pre-commit tests and are absent
# here; the numbering deliberately keeps the gaps so TEST 5 and TEST 6 mean the
# same thing in every variant. See infusal/go-template#33.
set -u

repo_root=$(git rev-parse --show-toplevel)
cd "$repo_root" || exit 1

fail() { echo "FAIL: $1"; exit 1; }

# TEST 2 — commit-msg with VALID message silent + exit 0
tmp=$(mktemp)
echo "fix: a valid conventional commit" > "$tmp"
out=$(env -i HOME="$HOME" PATH="/usr/bin:/bin" .commitlint/hooks/commit-msg "$tmp" 2>&1)
status=$?
rm -f "$tmp"
[ $status -eq 0 ] || fail "commit-msg returned $status on valid msg; output: $out"
[ -z "$out" ] || fail "commit-msg emitted output on success: $out"

# TEST 3 — commit-msg with INVALID message produces output + non-zero exit
tmp=$(mktemp)
echo "not a valid message" > "$tmp"
out=$(env -i HOME="$HOME" PATH="/usr/bin:/bin" .commitlint/hooks/commit-msg "$tmp" 2>&1)
status=$?
rm -f "$tmp"
[ $status -ne 0 ] || fail "commit-msg accepted invalid message"
[ -n "$out" ] || fail "commit-msg silent on invalid message"

# The hook prepends these fallback dirs (see its PATH export) so tools resolve
# outside a login shell. The "missing tool" case below is only reachable when
# the tool is in NONE of them — you cannot simulate "missing" on a machine that
# has the tool installed at a fallback dir, so skip there.
skipped=0
hook_fallback_path="/usr/bin:/bin:/opt/homebrew/bin:/usr/local/bin:/usr/local/go/bin:/nonexistent/go/bin:/nonexistent/.npm-global/bin:/nonexistent/.npm-global:/nonexistent/AppData/Roaming/npm"
simulatable_missing() { ! PATH="$hook_fallback_path" command -v "$1" >/dev/null 2>&1; }

# TEST 5 — commit-msg emits friendly message when commitlint missing
if simulatable_missing commitlint; then
	tmp=$(mktemp)
	echo "fix: anything" > "$tmp"
	out=$(env -i HOME=/nonexistent PATH="/usr/bin:/bin" .commitlint/hooks/commit-msg "$tmp" 2>&1)
	status=$?
	rm -f "$tmp"
	[ $status -eq 2 ] || fail "commit-msg missing-binary path returned $status (expected 2)"
	echo "$out" | grep -q "commitlint could not be found" || fail "commit-msg missing-binary message missing"
else
	echo "SKIP TEST 5: commitlint reachable via a hook fallback dir — missing-binary case not simulatable here"
	skipped=$((skipped + 1))
fi

# TEST 6 — the npx fallback still REJECTS a bad message.
# The fallback branch only runs when the commitlint first on PATH is not
# @commitlint/cli, so nothing above ever reaches it on a provisioned machine.
# That left roughly thirty lines -- the hook's whole failure path -- asserted by
# nothing: a mutation returning 0 from the fallback committed unlinted junk and
# passed every other check here. Stub a non-@commitlint/cli commitlint to force
# the branch.
if command -v npx >/dev/null 2>&1; then
	stub=$(mktemp -d)
	cat > "$stub/commitlint" <<'STUB'
#!/bin/sh
# Impersonates the retired Go commitlint: unknown flags, non-zero, and a
# --version string that is not @commitlint/cli.
[ "$1" = "--version" ] && { echo "commitlint version v0.12.0"; exit 0; }
echo "Incorrect Usage: flag provided but not defined: -extends" >&2
exit 1
STUB
	chmod +x "$stub/commitlint"
	tmp=$(mktemp)
	echo "not a valid message" > "$tmp"
	out=$(PATH="$stub:$PATH" .commitlint/hooks/commit-msg "$tmp" 2>&1)
	status=$?
	rm -f "$tmp"; rm -rf "$stub"
	case "$out" in
		*ENOTCACHED*|*ERR_SOCKET*|*network*|*ENOTFOUND*|*EAI_AGAIN*)
			echo "SKIP TEST 6: npx could not reach the registry — fallback path not exercisable here"
			skipped=$((skipped + 1)) ;;
		*)
			[ $status -ne 0 ] || fail "npx fallback ACCEPTED an invalid message (exit 0) — the fallback path fails open"
			;;
	esac
else
	echo "SKIP TEST 6: npx not available — fallback path not exercisable here"
	skipped=$((skipped + 1))
fi

if [ "$skipped" -eq 0 ]; then
	echo "OK: all hook behaviors verified"
else
	echo "OK: hook behaviors verified ($skipped skipped)"
fi
