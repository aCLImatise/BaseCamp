class: CommandLineTool
id: faSize.cwl
inputs:
- id: detailed
  doc: outputs name and size of each record has the side effect of printing nothing
    else
  type: boolean
  inputBinding:
    prefix: -detailed
- id: tab
  doc: output statistics in a tab separated format
  type: boolean
  inputBinding:
    prefix: -tab
outputs: []
cwlVersion: v1.1
baseCommand:
- faSize
