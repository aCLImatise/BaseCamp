class: CommandLineTool
id: py2neo.cwl
inputs:
- id: in_p
  doc: ''
  type: string?
  inputBinding:
    prefix: -P
- id: in_h
  doc: ''
  type: string?
  inputBinding:
    prefix: -H
- id: in_run
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_statement
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- py2neo
