class: CommandLineTool
id: abba_baba.cwl
inputs:
- id: tree
  doc: ',B,C,D'
  type: string
  inputBinding:
    prefix: --tree
- id: your
  doc: "goes here       -'                "
  type: string
  inputBinding:
    prefix: '-     Your'
outputs: []
cwlVersion: v1.1
baseCommand:
- abba-baba
