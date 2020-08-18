class: CommandLineTool
id: ../../../permuteSmooth.cwl
inputs:
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- permuteSmooth
