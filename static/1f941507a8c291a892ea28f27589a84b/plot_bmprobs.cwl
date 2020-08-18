class: CommandLineTool
id: ../../../plot_bmprobs.cwl
inputs:
- id: plot_bm_probs
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- plot-bmprobs
