class: CommandLineTool
id: pslDropOverlap_out.psl.cwl
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
- pslDropOverlap
- out.psl
