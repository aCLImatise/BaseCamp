class: CommandLineTool
id: ../../../faSomeRecords.cwl
inputs:
- id: exclude
  doc: '- output sequences not in the list file.'
  type: boolean
  inputBinding:
    prefix: -exclude
- id: in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: list_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- faSomeRecords
