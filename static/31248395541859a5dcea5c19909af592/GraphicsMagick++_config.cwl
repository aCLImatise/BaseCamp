class: CommandLineTool
id: GraphicsMagick++_config.cwl
inputs:
- id: in_graphicsmagick
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- GraphicsMagick++-config
