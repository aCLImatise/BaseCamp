class: CommandLineTool
id: coordinateTranslate_XMFA alignment.cwl
inputs:
- id: alignment_coordinate_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- coordinateTranslate
- XMFA alignment
