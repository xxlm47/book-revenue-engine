# Book Revenue Engine

A $0-startup-cost, mobile-friendly operating system for researching, creating, packaging, and launching practical nonfiction digital products.

## Goal

Turn validated reader problems into useful books and companion products without requiring paid software, paid APIs, advertising, or upfront outsourcing.

**This project does not guarantee income. It optimizes the workflow for evidence, speed, quality, and zero upfront spend.**

## Pipeline

1. Discover demand
2. Research competitors and reader complaints
3. Identify gaps
4. Define reader + outcome
5. Build outline
6. Draft
7. Fact-check
8. Edit
9. Generate metadata and cover brief
10. Build companion product ideas
11. Generate marketing assets
12. Quality-control
13. Human approval
14. Publish to KDP/Gumroad manually
15. Measure and improve

## $0 rule

No paid API is required by the repository. No paid ads, domains, hosting, subscriptions, outsourcing, or premium design assets are required to start.

GitHub Actions and GitHub Pages are intended to be optional automation/website layers. For a strict $0 setup, keep the repository public if you want to maximize GitHub's free public-repository automation allowance.

## Android

The repository is designed to work from a browser and Termux. The local shell scripts are intentionally dependency-light.

## Quick start

```bash
chmod +x scripts/*.sh
./scripts/new-book.sh
```

For the complete workflow, see `docs/WORKFLOW.md`.

## Safety / quality

The engine is a research and production assistant, not an autopublisher. It should never invent facts, reviews, testimonials, sources, or market demand. A human must approve the final manuscript and marketplace listing.

For KDP, follow Amazon's current content, rights, metadata, and AI-content disclosure requirements.

## Future product

The repository is intentionally structured so the free open workflow can eventually become a hosted/mobile-friendly product with optional paid automation, analytics, monitoring, and collaboration features. Those are future layers—not startup requirements.
