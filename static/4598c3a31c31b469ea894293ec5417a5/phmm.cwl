class: CommandLineTool
id: ../../../phmm.cwl
inputs:
- id: seq_one
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq_two
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- phmm
