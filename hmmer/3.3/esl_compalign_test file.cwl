class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/esl_compalign_test file.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: esl_comp_align
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: trusted_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: test_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-compalign
- test file
