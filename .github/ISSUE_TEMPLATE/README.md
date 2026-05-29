# Issue Templates

The templates in this folder are **org-level defaults** for the entire
`infusal` organisation. They appear automatically in every `infusal/*`
repository's "New issue" picker unless that repo defines its own templates.

## Available templates

### Story (synced from `infusal/roadmap`)

A **repo-specific unit of work** — roughly a phase within one repo, with its
own acceptance criteria.

- **Required:** summary, acceptance criteria
- **Optional:** parent Phase, parent Feature, primary Capability, notes

### Task (synced from `infusal/roadmap`)

A **commit-sized work item** — roughly one task per commit.

- **Required:** summary
- **Optional:** parent Story, notes

### Bug

A report of a **defect, regression, or unexpected behavior**.

- **Required:** summary, reproduction steps, expected vs actual behavior
- **Optional:** environment, logs, impact, notes

## Issue hierarchy

```
Capability   (portal)
 └─ Epic     (infusal/roadmap)
     └─ Feature  (infusal/roadmap)
         └─ Phase    (infusal/roadmap; multi-repo only)
             └─ Story    (code repos)
                 └─ Task     (code repos)
```

Bug is orthogonal — defects exist outside the planning tree.

For the full design rationale see [ADR-024 — Issue tracking hierarchy](https://github.com/infusal/portal/blob/main/content/architecture/adr/024-issue-tracking-hierarchy.md).

## Editing templates

| Template | Edit here? |
|---|---|
| `story.yml`, `task.yml` | ❌ — golden source lives in `infusal/roadmap/template-sources/`. An auto-PR will land changes here. |
| `bug.yml` | ✅ — owned by this repo, edit directly. |

## Type field

Each template sets `type:` so the Issue Type chip is applied automatically.
Issue Types are defined at the org level
(<https://github.com/organizations/infusal/settings/issue-types>) — if the
chip does not appear, the type may be missing from the org configuration.
