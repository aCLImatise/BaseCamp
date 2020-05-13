class: CommandLineTool
id: arv_federation_migrate.cwl
inputs:
- id: report
  doc: Generate report .csv file listing users by email address and their associated
    Arvados accounts
  type: string
  inputBinding:
    prefix: --report
- id: migrate
  doc: Consume report .csv and migrate users to designated Arvados accounts
  type: string
  inputBinding:
    prefix: --migrate
- id: dry_run
  doc: Consume report .csv and report how user would be migrated to designated Arvados
    accounts
  type: string
  inputBinding:
    prefix: --dry-run
- id: check
  doc: Check that tokens are usable and the federation is well connected
  type: boolean
  inputBinding:
    prefix: --check
outputs: []
cwlVersion: v1.1
baseCommand:
- arv-federation-migrate
