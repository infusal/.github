---
name: Chore
about: Maintenance, dependency updates, documentation, or internal improvements
title: "[CHORE] "
labels: "type:chore"
assignees: ""
---

## Summary

<!-- Clear description of the maintenance task or chore -->

## Type of Chore

<!-- What kind of chore is this? -->

- [ ] Dependency update (npm, Go modules, Hugo modules)
- [ ] Documentation update
- [ ] Code quality improvement (linting, formatting, tests)
- [ ] Infrastructure or tooling
- [ ] Other: ___________

## Affected Package(s)

<!-- Check the package(s) affected by this chore (use pkg: labels on issue) -->

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
- [ ] pkg:infusal.io (Public website)
- [ ] pkg:godoc (Go docs exporter)
- [ ] pkg:mod-godoc (Hugo module for docs)

**Tooling & Infrastructure**:
- [ ] pkg:common-claude (Shared IDE settings)
- [ ] pkg:go-template (Go template)
- [ ] pkg:web-template (Web template)

**Other**:
- [ ] Other package: ___________

## Details

<!-- Provide relevant details -->

### For Dependency Updates:

- **Current version**:
- **New version**:
- **Breaking changes**: Yes / No
- **Migration needed**: Yes / No (if yes, describe)
- **Related issue/PR**: (link to upstream if available)

### For Other Chores:

<!-- Describe what needs to be done and why -->

## Acceptance Criteria

- [ ] Changes completed
- [ ] Tests passing (if applicable)
- [ ] Documentation updated (if applicable)
- [ ] Tested in development environment

## Cross-Repo Coordination

<!-- If this chore affects other repositories, note dependencies -->

- [ ] Requires coordination with other repos (list below)
- [ ] Will be required by other repos (list below)

**Other repositories affected**:
- [ ] List other repos

## Related Issues

<!-- Link to any related issues or discussions -->
