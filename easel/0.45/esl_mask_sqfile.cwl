class: CommandLineTool
id: ../../../esl_mask_sqfile.cwl
inputs:
- id: mask_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-mask
- sqfile
