class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ssu_esl_mask_maskfile.cwl
inputs:
- id: ssu_esl_mask
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
- ssu-esl-mask
- maskfile
