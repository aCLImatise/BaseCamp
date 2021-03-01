class: CommandLineTool
id: msp_simulate_history_file.cwl
inputs:
- id: in_length
  doc: ''
  type: long?
  inputBinding:
    prefix: --length
- id: in_msp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_simulate
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- msp
- simulate
- history_file
