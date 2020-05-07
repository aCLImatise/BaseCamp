class: CommandLineTool
id: afetch.cwl
inputs:
- id: index
  doc: ': construct indices for the database'
  type: boolean
  inputBinding:
    prefix: --index
outputs: []
cwlVersion: v1.1
baseCommand:
- afetch
