class: CommandLineTool
id: mapDIA.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: parameter
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- mapDIA
