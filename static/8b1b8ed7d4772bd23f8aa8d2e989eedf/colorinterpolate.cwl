class: CommandLineTool
id: colorinterpolate.cwl
inputs:
- id: start
  doc: ',y1,z1 -end x2,y2,z2 -steps STEPS'
  type: string
  inputBinding:
    prefix: -start
outputs: []
cwlVersion: v1.1
baseCommand:
- colorinterpolate
