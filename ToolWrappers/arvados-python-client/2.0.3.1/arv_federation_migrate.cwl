class: CommandLineTool
id: arv_federation_migrate.cwl
inputs:
- id: in_report
  doc: Generate report .csv file listing users by email address
  type: File
  inputBinding:
    prefix: --report
- id: in_migrate
  doc: Consume report .csv and migrate users to designated
  type: string
  inputBinding:
    prefix: --migrate
- id: in_dry_run
  doc: Consume report .csv and report how user would be migrated
  type: string
  inputBinding:
    prefix: --dry-run
- id: in_check
  doc: Check that tokens are usable and the federation is well
  type: boolean
  inputBinding:
    prefix: --check
- id: in_tokens
  doc: ''
  type: string
  inputBinding:
    prefix: --tokens
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- arv-federation-migrate
