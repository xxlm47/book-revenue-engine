# Book Revenue Engine

A **$0-startup-cost, mobile-friendly publishing operating system** for researching, creating, packaging, launching, and improving practical nonfiction digital products.

## Mission

Turn validated reader problems into useful products without requiring paid software, paid APIs, advertising, hosting, or upfront outsourcing.

**No income is guaranteed. The system is optimized for evidence, speed, quality, repeatability, and zero upfront spend.**

## Core loop

`Demand -> Evidence -> Gap -> Product -> Publish -> Distribution -> Measure -> Improve -> Next Product`

## Pipeline

1. Discover demand
2. Research competitors and reader complaints
3. Record sources and dates
4. Identify gaps
5. Define reader + outcome
6. Build outline
7. Draft
8. Fact-check
9. Edit
10. Generate metadata and cover brief
11. Build companion-product ideas
12. Generate organic marketing assets
13. Quality-control
14. Human approval
15. Publish to KDP/Gumroad manually
16. Measure and improve

## $0 rule

No paid API is required by the repository. No paid ads, domains, hosting, subscriptions, outsourcing, or premium design assets are required to start.

Transaction fees that occur only after a sale are not startup costs, but current platform terms must always be checked before use.

## Android / Termux

The repository is designed to be operated from a browser or Termux.

```bash
chmod +x scripts/*.sh
./scripts/new-project.sh
```

Then research the project before drafting.

## Project structure

Each opportunity can live under `projects/<slug>/` with research, competitors, gaps, manuscript, fact-check, metadata, products, marketing, launch, and metrics folders.

See `docs/WORKFLOW.md`, `docs/REVENUE-SYSTEM.md`, and `docs/PRODUCT-ROADMAP.md`.

## Quality and safety

This is a research and production assistant, **not an autopublisher**. It must not invent facts, reviews, testimonials, sources, or market demand. A human must approve the final manuscript and marketplace listing.

For KDP, follow Amazon's current content, rights, metadata, and AI-content disclosure requirements. If AI generates publishable content, disclose it as required by the current KDP rules.

Never store secrets, API keys, passwords, payment credentials, or private customer information in the repository.

## Future product

The free repository is intentionally structured to become a useful public product before any paid infrastructure is introduced. Possible future layers include a web dashboard, research monitoring, catalog analytics, collaboration, and optional premium automation.

**Do not add paid infrastructure merely to make the project look like a SaaS. Validate usefulness first.**
