class: CommandLineTool
id: maf_mask_cpg.py.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: mask
  doc: Character to use as mask ('?' is default)
  type: string
  inputBinding:
    prefix: --mask
- id: restricted
  doc: Use restricted definition of CpGs
  type: boolean
  inputBinding:
    prefix: --restricted
outputs: []
cwlVersion: v1.1
baseCommand:
- maf_mask_cpg.py
