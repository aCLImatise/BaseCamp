class: CommandLineTool
id: crux_assign_confidence_crux_output..cwl
inputs:
- id: in_crux
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_assign_confidence
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_target_input
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- crux
- assign-confidence
- crux-output.
