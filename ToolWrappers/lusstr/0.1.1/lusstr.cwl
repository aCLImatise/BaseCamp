class: CommandLineTool
id: lusstr.cwl
inputs:
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_sub_cmd
  doc: annotate, format
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- lusstr
