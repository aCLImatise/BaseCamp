class: CommandLineTool
id: wigCorrelate.cwl
inputs:
- id: one_wig
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: n_wig
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: clamp_max
  doc: than this are clipped to this value
  type: string
  inputBinding:
    prefix: -clampMax
outputs: []
cwlVersion: v1.1
baseCommand:
- wigCorrelate
