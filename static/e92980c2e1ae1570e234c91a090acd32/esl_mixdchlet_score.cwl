class: CommandLineTool
id: esl_mixdchlet_score.cwl
inputs:
- id: mix_dch_let_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: counts_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-mixdchlet
- score
