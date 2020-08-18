class: CommandLineTool
id: ../../../ibdne.cwl
inputs:
- id: cat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ibd
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ibdne
