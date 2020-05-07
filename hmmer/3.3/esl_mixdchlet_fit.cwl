class: CommandLineTool
id: esl_mixdchlet_fit.cwl
inputs:
- id: q
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: k
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_count_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_mix_dch_let
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-mixdchlet
- fit
