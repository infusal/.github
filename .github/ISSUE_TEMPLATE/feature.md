---
name: Feature
about: Propose a new feature or enhancement
title: "[FEATURE] "
labels: "type:feature"
assignees: ""
---

## Summary

<!-- Clear, concise description of what feature is needed and why -->

## User Story (optional)

<!-- If applicable, describe from the user perspective -->

As a **[user role]** (e.g., data engineer, admin, platform user),
I want to **[action/capability]**,
so that **[benefit/value]**.

**Example:**
As a data engineer, I want to automatically detect schema changes in source systems, so that I can adapt pipelines without manual intervention.

## Affected Packages

<!-- Check the packages this feature affects (use pkg: labels on issue) -->

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

## Cross-Repository Dependencies

<!-- If this feature spans multiple repositories, list blocking and dependent issues -->

This feature:
- [ ] Requires changes in other repositories (list below)
- [ ] Will be required by other repositories (list below)

**Blocking this work** (must complete first):
- [ ] List GitHub issues/PRs this depends on

**Blocked by this work** (will unblock when complete):
- [ ] List GitHub issues that depend on this

## Acceptance Criteria

<!-- What must be true for this feature to be "done"? -->

- [ ] Automated tests passing
- [ ] Code reviewed and approved
- [ ] Documentation updated
- [ ] No breaking changes (or documented migration path)

## Implementation Notes

<!-- Any considerations for implementation, cross-repo coordination, gotchas, or design decisions -->

## Related Issue

<!-- If this feature is part of a larger epic, link to the parent issue -->

Closes #<!-- issue number if fixing an existing issue -->
