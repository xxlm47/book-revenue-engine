# Runbook

## Start a new opportunity

```bash
./scripts/new-project.sh
```

## Build the complete workspace

```bash
./scripts/run-pipeline.sh <project-slug> all
```

## Run one stage

```bash
./scripts/run-pipeline.sh <project-slug> research
./scripts/run-pipeline.sh <project-slug> opportunity
./scripts/run-pipeline.sh <project-slug> outline
./scripts/run-pipeline.sh <project-slug> drafting
./scripts/run-pipeline.sh <project-slug> fact-check
./scripts/run-pipeline.sh <project-slug> edit
./scripts/run-pipeline.sh <project-slug> packaging
./scripts/run-pipeline.sh <project-slug> launch
```

## Inspect a project

```bash
./scripts/report.sh projects/<project-slug>
```

## Principle

The scripts create and validate the production workspace. They do not pretend to have performed web research or generated a manuscript when no research/AI provider has actually been run. Fill artifacts with evidence and use the prompts in `prompts/` to perform each stage.

## Future automation

Provider adapters can later connect the prompt stages to free/local models or other services without changing the project structure. Never hard-code a paid provider as a requirement for the core engine.
