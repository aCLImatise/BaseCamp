class: CommandLineTool
id: seqtk_famask_src.fa.cwl
inputs:
- id: mask_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- famask
- src.fa
