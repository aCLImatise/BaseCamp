class: CommandLineTool
id: colTransform.cwl
inputs:
- id: in_column
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_dot_tab
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_add_factor
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_mul_factor
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- colTransform
