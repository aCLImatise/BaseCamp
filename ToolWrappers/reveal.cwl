class: CommandLineTool
id: reveal.cwl
inputs:
- id: in_h
  doc: ''
  type: string
  inputBinding:
    prefix: -h
- id: in_usage
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
- reveal
