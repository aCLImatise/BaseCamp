class: CommandLineTool
id: gb2fas.cwl
inputs:
- id: in_input_dot_gb
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_dot_fas
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gb2fas
