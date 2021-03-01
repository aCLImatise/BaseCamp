class: CommandLineTool
id: analyzeBest.cwl
inputs:
- id: in_c
  doc: ''
  type: string?
  inputBinding:
    prefix: -c
- id: in_e
  doc: ''
  type: string?
  inputBinding:
    prefix: -e
- id: in_g
  doc: ''
  type: string?
  inputBinding:
    prefix: -g
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- analyzeBest
