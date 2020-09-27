class: CommandLineTool
id: smartrel.cwl
inputs:
- id: in_bad
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_params_dot_dot_dot_dot
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
- smartrel
