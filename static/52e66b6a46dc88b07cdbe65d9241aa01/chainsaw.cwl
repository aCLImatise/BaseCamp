class: CommandLineTool
id: ../../../chainsaw.cwl
inputs:
- id: filter
  doc: ': add a protein list filter'
  type: string
  inputBinding:
    prefix: --filter
- id: filenames
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- chainsaw
