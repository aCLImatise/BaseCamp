class: CommandLineTool
id: staramr_db_restore_default.cwl
inputs:
- id: force
  doc: Force restore without asking for confirmation.
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- staramr
- db
- restore-default
