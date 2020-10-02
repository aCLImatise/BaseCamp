class: CommandLineTool
id: fsnviz_star_fusion.cwl
inputs:
- id: in_input
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
- fsnviz
- star-fusion
