class: CommandLineTool
id: ../../../randomly_select_sequences.py.cwl
inputs:
- id: randomly
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: select
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: n
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: sequences
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: from
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: fast_a_slash_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- randomly_select_sequences.py
