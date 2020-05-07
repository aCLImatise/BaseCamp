class: CommandLineTool
id: faSomeRecords.cwl
inputs:
- id: in_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: list_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: exclude
  doc: not in the list file.
  type: string
  inputBinding:
    prefix: -exclude
outputs: []
cwlVersion: v1.1
baseCommand:
- faSomeRecords
