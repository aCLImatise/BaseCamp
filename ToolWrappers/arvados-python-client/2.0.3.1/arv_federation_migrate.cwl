class: CommandLineTool
id: arv_federation_migrate.cwl
inputs:
- id: in_tokens
  doc: "Generate report .csv file listing users by email address\nand their associated\
    \ Arvados accounts"
  type: File?
  inputBinding:
    prefix: --tokens
- id: in_migrate
  doc: "Consume report .csv and migrate users to designated\nArvados accounts"
  type: string?
  inputBinding:
    prefix: --migrate
- id: in_dry_run
  doc: "Consume report .csv and report how user would be migrated\nto designated Arvados\
    \ accounts"
  type: string?
  inputBinding:
    prefix: --dry-run
- id: in_check
  doc: "Check that tokens are usable and the federation is well\nconnected\n"
  type: boolean?
  inputBinding:
    prefix: --check
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- arv-federation-migrate
