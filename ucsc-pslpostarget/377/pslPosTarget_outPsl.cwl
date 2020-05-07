class: CommandLineTool
id: pslPosTarget_outPsl.cwl
inputs:
- id: in_psl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_psl
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pslPosTarget
- outPsl
