class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/wigCorrelate.cwl
inputs:
- id: clamp_max
  doc: '- values larger than this are clipped to this value'
  type: string
  inputBinding:
    prefix: -clampMax
- id: n_do_twig
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- wigCorrelate
