class: CommandLineTool
id: all_dists.cwl
inputs:
- id: in_mod
  doc: Read from tree model (*.mod) file(s) instead of Newick file.
  type: boolean
  inputBinding:
    prefix: --mod
- id: in_tree
  doc: "|<string>\nUse leaf names from given tree.  Useful when primary files\nuse\
    \ numbers rather than names."
  type: File
  inputBinding:
    prefix: --tree
- id: in_tree_dot_nh
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tree_three_dot_nh
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- all_dists
