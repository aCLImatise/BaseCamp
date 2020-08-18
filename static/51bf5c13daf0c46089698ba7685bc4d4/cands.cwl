class: CommandLineTool
id: ../../../cands.cwl
inputs:
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: l
  doc: ''
  type: File
  inputBinding:
    prefix: -l
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: that
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: will
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: contain
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: list
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: of
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: c_and
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 6
- id: created
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: can_d_file
  doc: ''
  type: string
  inputBinding:
    position: 9
outputs: []
cwlVersion: v1.1
baseCommand:
- cands
