class: CommandLineTool
id: ../../../get_seqs_from_list.py.cwl
inputs:
- id: partial
  doc: ''
  type: boolean
  inputBinding:
    prefix: --partial
- id: get
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sequences
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: var_3
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: var_4
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: fast_a_slash_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 5
- id: var_7
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: var_8
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: list
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs: []
cwlVersion: v1.1
baseCommand:
- get_seqs_from_list.py
