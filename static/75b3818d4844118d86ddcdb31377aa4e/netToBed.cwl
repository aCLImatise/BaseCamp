class: CommandLineTool
id: netToBed.cwl
inputs:
- id: in_net
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: max_gap
  doc: at gaps of given size or more
  type: string
  inputBinding:
    prefix: -maxGap
- id: min_fill
  doc: fill of given size of above.
  type: string
  inputBinding:
    prefix: -minFill
outputs: []
cwlVersion: v1.1
baseCommand:
- netToBed
