---
name: Bug
about: Report a defect or unexpected behavior
title: "[BUG] "
labels: "type:bug"
assignees: ""
---

## Summary

<!-- Clear, concise description of the bug -->

## Affected Package(s)

<!-- Check the package(s) affected by this bug (use pkg: labels on issue) -->

**Platform Core**:
- [ ] pkg:core (Core Go libraries)
- [ ] pkg:api (REST API service)
- [ ] pkg:database (Schema & migrations)
- [ ] pkg:openapi (API specification)

**Applications & Interfaces**:
- [ ] pkg:app (User-facing application)
- [ ] pkg:portal (Developer portal)
- [ ] pkg:webserver (Edge server)

**Agent & Plugin System**:
- [ ] pkg:agent (On-premise agent)
- [ ] pkg:hub (Plugin catalog)
- [ ] pkg:plugin-sdk (Plugin SDK)

**Web & Documentation**:
- [ ] pkg:theme-infusal (Common theme)
- [ ] pkg:godoc (Go docs exporter)
- [ ] pkg:mod-godoc (Hugo module for docs)

**Tooling & Infrastructure**:
- [ ] pkg:common-claude (Shared IDE settings)
- [ ] pkg:go-template (Go template)
- [ ] pkg:web-template (Web template)

**Other**:
- [ ] Other package: ___________

## Reproduction Steps

<!-- Detailed steps to reproduce the bug -->

1.
2.
3.

## Expected Behavior

<!-- What should happen -->

## Actual Behavior

<!-- What actually happens -->

## Environment

<!-- Relevant environment information -->

- **Package version**:
- **Environment**: (dev/test/production)
- **OS**: (if relevant)
- **Go version**: (if relevant)
- **Hugo version**: (if relevant)

## Logs and Error Messages

<!-- Include relevant logs, stack traces, or error messages -->

```
Paste logs/errors here
```

## Impact

<!-- How does this bug affect users? Is it blocking? -->

- [ ] Blocking (prevents work or causes data loss)
- [ ] High priority (degraded functionality)
- [ ] Medium priority (workaround available)
- [ ] Low priority (cosmetic or edge case)

## Related Issues

<!-- Link to any related issues or discussions -->

Fixes #<!-- issue number if this bug fixes an issue -->
