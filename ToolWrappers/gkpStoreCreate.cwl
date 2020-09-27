class: CommandLineTool
id: gkpStoreCreate.cwl
inputs:
- id: in_create_this_gkpstore
  doc: create this gkpStore
  type: string
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gkpStoreCreate
