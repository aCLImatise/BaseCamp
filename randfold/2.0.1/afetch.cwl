class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/afetch.cwl
inputs:
- id: index
  doc: ': construct indices for the database'
  type: boolean
  inputBinding:
    prefix: --index
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- afetch
