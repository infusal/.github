# infusal/.github

Community-health and template files that GitHub applies as **defaults across
all `infusal/*` repositories** that do not override them.

## What lives here

- `.github/ISSUE_TEMPLATE/` — shared issue templates for the eco-system
- `.github/ISSUE_TEMPLATE/config.yml` — disables blank issues, links to portal
- `.github/ISSUE_TEMPLATE/README.md` — guide to the templates and our hierarchy

## Available templates

| Template | Purpose | Owned where |
|---|---|---|
| `story.yml` | Repo-specific unit of work | Synced from [`infusal/roadmap/template-sources/`](https://github.com/infusal/roadmap/tree/main/template-sources) |
| `task.yml` | Commit-sized work item | Synced from [`infusal/roadmap/template-sources/`](https://github.com/infusal/roadmap/tree/main/template-sources) |
| `bug.yml` | Defect / unexpected behavior report | Owned here — edit directly |

## Issue hierarchy (where issues live)

```
Capability   (portal page)
 └─ Epic     (infusal/roadmap)
     └─ Feature  (infusal/roadmap)
         └─ Phase    (infusal/roadmap; multi-repo only)
             └─ Story    (code repos)
                 └─ Task     (code repos)
```

Bug sits orthogonal to this tree — defects don't belong in the planning
hierarchy.

For the full design rationale see [ADR-024 — Issue tracking hierarchy](https://github.com/infusal/portal/blob/main/content/architecture/adr/024-issue-tracking-hierarchy.md).

## Editing a template

| Template | Edit here? | How |
|---|---|---|
| `story.yml`, `task.yml` | ❌ | Edit `template-sources/*.yml` in `infusal/roadmap`. An automated PR will land the change here. |
| `bug.yml` | ✅ | Open a PR directly against this repo. |
| Epic / Feature / Phase | ❌ (live elsewhere) | Edit `.github/ISSUE_TEMPLATE/` in `infusal/roadmap` directly. |
| Capability | ❌ (live elsewhere) | Edit `content/product/capability-map/` in `infusal/portal`. |

## Contributing

Commit messages follow [Conventional Commits](https://www.conventionalcommits.org), enforced by a `commit-msg` hook that runs [commitlint](https://commitlint.js.org).

Cloning does not install the hook. `core.hooksPath` is local repository configuration, which git deliberately does not carry across a clone, so every working copy sets it once:

```bash
npm install -g @commitlint/cli@21 @commitlint/config-conventional@21
git config core.hooksPath .commitlint/hooks
```

The hook passes its rules on the command line with `--extends`, so this repository needs no `package.json`, no `node_modules` and no commitlint config file. It stays silent on success, and it searches the usual global-install locations on macOS, Linux and Windows, so no `npm config set prefix` step is required.
