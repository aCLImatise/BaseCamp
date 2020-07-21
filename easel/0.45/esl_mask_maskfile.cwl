class: CommandLineTool
id: ../../../esl_mask_maskfile.cwl
inputs:
- id: esl_mask
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: mask_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-mask
- maskfile
