class: CommandLineTool
id: ../../../ssu_esl_selectn.cwl
inputs:
- id: seed
  doc: ": set random number generator's seed to <n>  [0]"
  type: string
  inputBinding:
    prefix: --seed
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-selectn
