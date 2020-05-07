class: CommandLineTool
id: chainsaw.cwl
inputs:
- id: filenames
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: filter
  doc: ': add a protein list filter'
  type: string
  inputBinding:
    prefix: --filter
outputs: []
cwlVersion: v1.1
baseCommand:
- chainsaw
