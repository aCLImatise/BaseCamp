class: CommandLineTool
id: fa2fq.py.cwl
inputs:
- id: convert
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: fast_q
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: fast_a_filename
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- fa2fq.py
