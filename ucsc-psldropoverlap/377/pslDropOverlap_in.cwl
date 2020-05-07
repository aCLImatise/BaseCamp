class: CommandLineTool
id: pslDropOverlap_in.psl.cwl
inputs:
- id: out_psl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pslDropOverlap
- in.psl
