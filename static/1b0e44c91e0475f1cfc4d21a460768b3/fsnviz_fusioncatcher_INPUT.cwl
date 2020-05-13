class: CommandLineTool
id: fsnviz_fusioncatcher_INPUT.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fsnviz
- fusioncatcher
- INPUT
