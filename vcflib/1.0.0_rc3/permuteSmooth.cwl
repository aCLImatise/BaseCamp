class: CommandLineTool
id: permuteSmooth.cwl
inputs:
- id: '5'
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: '1'
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: your
  doc: "goes here       -'                "
  type: string
  inputBinding:
    prefix: '-     Your'
outputs: []
cwlVersion: v1.1
baseCommand:
- permuteSmooth
