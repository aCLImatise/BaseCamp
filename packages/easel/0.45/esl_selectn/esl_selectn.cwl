class: CommandLineTool
id: ../../../esl_selectn.cwl
inputs:
- id: in_seed
  doc: ": set random number generator's seed to <n>  [0]"
  type: long
  inputBinding:
    prefix: --seed
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- esl-selectn
