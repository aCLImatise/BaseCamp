class: CommandLineTool
id: relatedness.py.cwl
inputs:
- id: tree_fp
  doc: the tree filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --tree_fp
- id: tax_a_fp
  doc: taxa list filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --taxa_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- relatedness.py
