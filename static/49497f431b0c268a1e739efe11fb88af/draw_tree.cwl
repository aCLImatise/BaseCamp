class: CommandLineTool
id: draw_tree.cwl
inputs:
- id: in_print_opposed_option
  doc: "Print \"diagonal\" branches, instead of \"right-angle\" or\n\"square\" ones\
    \ (produces a \"cladogram\", as opposed to a\n\"phenogram\").  This option implies\
    \ -s."
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_suppress_branch_lengths
  doc: Suppress branch lengths.
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_vertical_layout
  doc: Vertical layout.
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_draw_branches_scale
  doc: Don't draw branches to scale.
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_db_vs
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -dbvs
- id: in_tree_dot_nh
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- draw_tree
