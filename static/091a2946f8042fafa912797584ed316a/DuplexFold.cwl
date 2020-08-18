class: CommandLineTool
id: ../../../DuplexFold.cwl
inputs:
- id: seq_file_one
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq_file_two
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ct_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- DuplexFold
