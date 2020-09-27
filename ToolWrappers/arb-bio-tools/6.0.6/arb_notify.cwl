class: CommandLineTool
id: arb_notify.cwl
inputs:
- id: in_id
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- arb_notify
