class: CommandLineTool
id: translate.cwl
inputs:
- id: in_f
  doc: ''
  type: string?
  inputBinding:
    prefix: -f
- id: in_input
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_output
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- translate
