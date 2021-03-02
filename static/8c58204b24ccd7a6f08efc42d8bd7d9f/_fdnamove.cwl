class: CommandLineTool
id: _fdnamove.cwl
inputs:
- id: in_weights
  doc: properties Weights file - ignore sites with weight zero
  type: boolean?
  inputBinding:
    prefix: -weights
- id: in_out_gr_no
  doc: "integer    [0] Species number to use as outgroup\n(Integer 0 or more)"
  type: boolean?
  inputBinding:
    prefix: -outgrno
- id: in_do_threshold
  doc: toggle     [N] Use threshold parsimony
  type: boolean?
  inputBinding:
    prefix: -dothreshold
- id: in_initial_tree
  doc: "menu       [Arbitary] Initial tree (Values: a\n(Arbitary); u (User); s (Specify))"
  type: boolean?
  inputBinding:
    prefix: -initialtree
- id: in_screen_width
  doc: "integer    [80] Width of terminal screen in characters\n(Any integer value)"
  type: boolean?
  inputBinding:
    prefix: -screenwidth
- id: in_screen_lines
  doc: "integer    [24] Number of lines on screen (Any integer\nvalue)"
  type: boolean?
  inputBinding:
    prefix: -screenlines
- id: in_out_tree_file
  doc: "outfile    [*.fdnamove] Phylip tree output file\n(optional)"
  type: File?
  inputBinding:
    prefix: -outtreefile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_tree_file
  doc: "outfile    [*.fdnamove] Phylip tree output file\n(optional)"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_tree_file)
hints: []
cwlVersion: v1.1
baseCommand:
- _fdnamove
