class: CommandLineTool
id: ../../../addVariants.py_output.cwl
inputs:
- id: variants
  doc: ''
  type: string
  inputBinding:
    prefix: --variants
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: add_variants_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: graph
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- addVariants.py
- output
