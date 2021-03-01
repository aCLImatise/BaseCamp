class: CommandLineTool
id: alignmentProjector.cwl
inputs:
- id: in_input_x_mfa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_x_mfa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_mfa_seq_input
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_mfa_seq_output
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- alignmentProjector
