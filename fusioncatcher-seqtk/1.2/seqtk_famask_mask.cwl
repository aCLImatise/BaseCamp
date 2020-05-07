class: CommandLineTool
id: seqtk_famask_mask.fa.cwl
inputs:
- id: src_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mask_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- famask
- mask.fa
