# Operating Workflow

## Fast path

1. Run `./scripts/new-book.sh`.
2. Fill `work/<slug>/topic-report.md`.
3. Research demand and competitors.
4. Decide whether the evidence supports proceeding.
5. Fill `book-outline.md`.
6. Draft using `prompts/05-draft.md`.
7. Fact-check using `prompts/06-fact-check.md`.
8. Run `templates/quality-check.md`.
9. Generate metadata and companion products.
10. Create organic promotional assets.
11. Human review.
12. Publish manually.
13. Record results in the launch checklist.

## Automation architecture

The repository separates orchestration from AI providers. This prevents the project from being locked to one paid API.

A future provider adapter can accept the prompt files and return structured JSON/Markdown. Until then, the prompts are usable manually with free AI/web tools.

## GitHub Actions

Use Actions for validation, scheduled maintenance, and static-site deployment. Do not put secrets in the repository. Do not build a workflow that spends money automatically.

## Revenue loop

Demand -> gap -> product -> publish -> organic distribution -> measure -> update -> next related product.

## Productization path

Phase 1: free open workflow.
Phase 2: polished web UI.
Phase 3: optional connectors/provider adapters.
Phase 4: monitoring and catalog analytics.
Phase 5: optional paid hosted automation.

Do not build paid infrastructure until there is evidence that users want the product.
