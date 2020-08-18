class: CommandLineTool
id: ../../../genometreetk_combine.cwl
inputs:
- id: support_type
  doc: 'type of support values to compute (default: average)'
  type: string
  inputBinding:
    prefix: --support_type
- id: silent
  doc: suppress output
  type: boolean
  inputBinding:
    prefix: --silent
- id: bootstrap_tree
  doc: tree with bootstrap support values
  type: string
  inputBinding:
    position: 0
- id: jk_marker_tree
  doc: tree with jackknife marker support values
  type: string
  inputBinding:
    position: 1
- id: jk_tax_a_tree
  doc: tree with jackknife taxa support values
  type: string
  inputBinding:
    position: 2
- id: output_tree
  doc: output tree
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- genometreetk
- combine
