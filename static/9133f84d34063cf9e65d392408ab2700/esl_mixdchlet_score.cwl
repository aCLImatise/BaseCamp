class: CommandLineTool
id: ../../../esl_mixdchlet_score.cwl
inputs:
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_mix_dch_let_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- esl-mixdchlet
- score
