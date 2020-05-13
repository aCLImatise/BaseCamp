class: CommandLineTool
id: gkpStoreCreate.cwl
inputs:
- id: o
  doc: create this gkpStore
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- gkpStoreCreate
