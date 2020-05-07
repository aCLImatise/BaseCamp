class: CommandLineTool
id: gemBS_db_sync.cwl
inputs:
- id: yes
  doc: Confirm operation
  type: boolean
  inputBinding:
    prefix: --yes
outputs: []
cwlVersion: v1.1
baseCommand:
- gemBS
- db-sync
