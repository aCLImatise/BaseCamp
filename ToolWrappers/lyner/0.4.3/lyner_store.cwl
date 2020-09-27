class: CommandLineTool
id: lyner_store.cwl
inputs:
- id: in_mode
  doc: '[csv|pickle|auto]'
  type: boolean
  inputBinding:
    prefix: --mode
- id: in_out
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
- lyner
- store
