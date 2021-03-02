class: CommandLineTool
id: eventClusterer.py.cwl
inputs:
- id: in_st
  doc: ''
  type: string?
  inputBinding:
    prefix: -st
- id: in_p
  doc: ''
  type: string?
  inputBinding:
    prefix: -p
- id: in_d
  doc: ''
  type: string?
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- eventClusterer.py
