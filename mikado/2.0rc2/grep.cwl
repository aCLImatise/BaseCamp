class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/grep.py_out.cwl
inputs:
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
- id: grep_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ids
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: target
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- grep.py
- out
