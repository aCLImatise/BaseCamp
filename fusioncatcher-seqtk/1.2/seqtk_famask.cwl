class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/seqtk_famask.cwl
inputs:
- id: src_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mask_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- famask
