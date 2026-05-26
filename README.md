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

For the full design rationale see ADR-019 (when written) in
[`infusal/portal/content/architecture/adr/`](https://github.com/infusal/portal/tree/main/content/architecture/adr).

## Editing a template

| Template | Edit here? | How |
|---|---|---|
| `story.yml`, `task.yml` | ❌ | Edit `template-sources/*.yml` in `infusal/roadmap`. An automated PR will land the change here. |
| `bug.yml` | ✅ | Open a PR directly against this repo. |
| Epic / Feature / Phase | ❌ (live elsewhere) | Edit `.github/ISSUE_TEMPLATE/` in `infusal/roadmap` directly. |
| Capability | ❌ (live elsewhere) | Edit `content/product/capability-map/` in `infusal/portal`. |
