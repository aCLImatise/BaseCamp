class: CommandLineTool
id: genometreetk_combine.cwl
inputs:
- id: in_support_type
  doc: 'type of support values to compute (default: average)'
  type: string?
  inputBinding:
    prefix: --support_type
- id: in_silent
  doc: suppress output
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_combine_support_values
  doc: Combine all support values into a single tree.
  type: string
  inputBinding:
    position: 0
- id: in_bootstrap_tree
  doc: tree with bootstrap support values
  type: string
  inputBinding:
    position: 0
- id: in_jk_marker_tree
  doc: tree with jackknife marker support values
  type: string
  inputBinding:
    position: 1
- id: in_jk_tax_a_tree
  doc: tree with jackknife taxa support values
  type: string
  inputBinding:
    position: 2
- id: in_output_tree
  doc: output tree
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- genometreetk
- combine
