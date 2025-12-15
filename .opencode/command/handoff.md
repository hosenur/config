---
description: End-of-session handoff - summarize state and generate continuation prompt
model: zai-coding-plan/glm-4.6
---

You are ending a work session. Your job is to create a clean handoff so the next session (or agent) can pick up seamlessly.

## Step 1: Gather Current State

Run these in parallel:

```bash
# Git status - uncommitted work?
git status --short

# Recent commits this session
git log --oneline -10

# Current branch
git branch --show-current

# Any open PRs?
gh pr list --state open --json number,title,headRefName --jq '.[] | "\(.number): \(.title) (\(.headRefName))"'
```

## Step 2: Identify Loose Ends

Check for:
- Uncommitted changes that should be committed or stashed
- TODOs mentioned in conversation but not tracked
- Decisions made that should be documented
- Work started but not finished

## Step 3: Sync Everything

```bash
# Commit any uncommitted work (if appropriate)
# git add . && git commit -m "wip: <description>"

# Push everything
git push
```

## Step 4: Generate Handoff

Output a handoff block in this format:

```markdown
## Session Handoff - [DATE]

### Completed This Session
- [list of completed work]

### In Progress
- [what's currently being worked on - status/blockers]

### Next Up
- [what should be tackled next, in priority order]

### Key Decisions Made
- [any architectural or design decisions worth remembering]

### Continuation Prompt
[A ready-to-paste prompt that gives the next session full context to continue]
```

## Step 5: Verify Clean State

```bash
git status  # Should be clean or intentionally dirty
```

**IMPORTANT:** The handoff is not complete until `git push` succeeds.
