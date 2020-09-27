class: CommandLineTool
id: babel.cwl
inputs:
- id: in_o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: boolean
  inputBinding:
    prefix: -i
- id: in_input_type
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_type
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
- babel
