class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/draw_tree.cwl
inputs:
- id: print_option_implies
  doc: Print "diagonal" branches, instead of "right-angle" or  "square" ones (produces
    a "cladogram", as opposed to a  "phenogram").  This option implies -s.
  type: boolean
  inputBinding:
    prefix: -d
- id: suppress_branch_lengths
  doc: Suppress branch lengths.
  type: boolean
  inputBinding:
    prefix: -b
- id: vertical_layout
  doc: Vertical layout.
  type: boolean
  inputBinding:
    prefix: -v
- id: draw_branches_scale
  doc: Don't draw branches to scale.
  type: boolean
  inputBinding:
    prefix: -s
- id: db_vs
  doc: ''
  type: boolean
  inputBinding:
    prefix: -dbvs
- id: tree_dot_nh
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- draw_tree
