class: CommandLineTool
id: 2bwt_builder.cwl
inputs:
- id: sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: index
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: prefix
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- 2bwt-builder
