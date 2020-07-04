class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/esl_alimask_maskfile.cwl
inputs:
- id: esl_ali_mask
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: msa_file
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
- esl-alimask
- maskfile
