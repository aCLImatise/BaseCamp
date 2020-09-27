class: CommandLineTool
id: nw_distance.cwl
inputs:
- id: in_selects_mode_see
  doc: ": selects mode (see Output). Mode is determined by the first\nletter of the\
    \ argument: 'r' for root mode (default), 'l' for LCA,\n'p' for parent, and 'm'\
    \ for matrix. Thus, '-mm', '-m matrix',\nand '-m mat' all select matrix mode."
  type: string
  inputBinding:
    prefix: -m
- id: in_prints_labels_empty
  doc: ": prints labels (or '' if empty) in addition to distances."
  type: boolean
  inputBinding:
    prefix: -n
- id: in_where_selection_determined
  doc: ", where selection is determined by the first letter of\nthe argument: 'a'\
    \ for all nodes, 'l' for labeled nodes,\n'i' for inner nodes, 'f' for leaves.\n\
    E.g. '-s a' and '-s all' both select all nodes."
  type: string
  inputBinding:
    prefix: -s
- id: in_matrix_mode_print
  doc: ": in matrix mode, print a triangular matrix. In other modes,\nprint values\
    \ on a line, separated by TABs."
  type: boolean
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nw_distance
