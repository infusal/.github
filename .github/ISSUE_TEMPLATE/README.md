# Issue Templates

This directory contains GitHub issue templates for Infusal repositories.

## Using Issue Templates

When creating a new issue on GitHub, you'll be prompted to select from the available templates:

### 1. Feature

Use for proposing new features or enhancements that may span multiple repositories.

**Key sections:**
- Summary of the feature
- Affected packages (helps with routing and visibility)
- Cross-repository dependencies and blocking relationships
- Acceptance criteria
- Implementation notes

**See also:** [GitHub Issues Strategy - Feature Epics](https://portal.infusal.io/development/team-workflow/github-issues-strategy/#2-feature-epics-across-repositories)

### 2. Bug

Use for reporting defects, regressions, or unexpected behavior.

**Key sections:**
- Clear summary and reproduction steps
- Expected vs actual behavior
- Environment details (version, OS, etc.)
- Logs and error messages
- Impact assessment (blocking, high, medium, low priority)

**See also:** [GitHub Issues Strategy - Priority Labels](https://portal.infusal.io/development/team-workflow/github-issues-strategy/#priority-labels)

### 3. Chore

Use for maintenance tasks, dependency updates, documentation, or internal improvements.

**Key sections:**
- Type of chore (dependency update, docs, code quality, etc.)
- Affected package
- Details and acceptance criteria
- Cross-repository coordination if needed

**See also:** [Development Workflow - Dependency Management](https://portal.infusal.io/development/team-workflow/dependency-management/)

## Labeling

All issues should include:

1. **Package label** (required): `pkg:*` to indicate which package(s) are affected
   - Examples: `pkg:api`, `pkg:plugin-sdk`, `pkg:portal`
   - See [Package Labels](https://portal.infusal.io/development/team-workflow/github-issues-strategy/#package-labels-required) for complete list

2. **Type label** (required): Pre-filled based on template but can be modified
   - `type:feature`, `type:bug`, `type:chore`, `type:enhancement`, `type:refactor`, `type:docs`

3. **Priority label** (recommended): `priority:critical`, `priority:high`, `priority:medium`, `priority:low`

4. **Status label** (optional): `status:ready`, `status:blocked`, `status:review`

## Dependency Linking

For issues that have dependencies on other issues:

1. Use the "Blocks/Blocked by" relationship in GitHub
2. Include the dependency information in the issue description
3. See [Explicit Dependency Linking](https://portal.infusal.io/development/team-workflow/github-issues-strategy/#3-explicit-dependency-linking) for details

## Creating Issues Programmatically

If you need to create issues via the GitHub API or CLI:

```bash
# Using gh CLI
gh issue create --template feature --title "Your title"
gh issue create --template bug --title "Your title"
gh issue create --template chore --title "Your title"
```

## References

- [Team Workflow - GitHub Issues Strategy](https://portal.infusal.io/development/team-workflow/github-issues-strategy/)
- [Team Workflow - Development Workflow](https://portal.infusal.io/development/team-workflow/development-workflow/)
- [GitHub Issue Docs](https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/about-issue-and-pull-request-templates)
