class: CommandLineTool
id: grep.py_ids_out.cwl
inputs:
- id: target
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- grep.py
- ids
- out
