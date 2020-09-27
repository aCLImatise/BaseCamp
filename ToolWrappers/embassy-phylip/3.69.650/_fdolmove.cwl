class: CommandLineTool
id: _fdolmove.cwl
inputs:
- id: in_weights
  doc: properties Weights file
  type: boolean
  inputBinding:
    prefix: -weights
- id: in_anc_file
  doc: properties Ancestral states file
  type: boolean
  inputBinding:
    prefix: -ancfile
- id: in_factor_file
  doc: properties Factors file
  type: boolean
  inputBinding:
    prefix: -factorfile
- id: in_method
  doc: "menu       [d] Parsimony method (Values: d (Dollo); p\n(Polymorphism))"
  type: boolean
  inputBinding:
    prefix: -method
- id: in_do_threshold
  doc: toggle     [N] Use threshold parsimony
  type: boolean
  inputBinding:
    prefix: -dothreshold
- id: in_initial_tree
  doc: "menu       [Arbitary] Initial tree (Values: a\n(Arbitary); u (User); s (Specify))"
  type: boolean
  inputBinding:
    prefix: -initialtree
- id: in_screen_width
  doc: "integer    [80] Width of terminal screen in characters\n(Any integer value)"
  type: boolean
  inputBinding:
    prefix: -screenwidth
- id: in_screen_lines
  doc: "integer    [24] Number of lines on screen (Any integer\nvalue)"
  type: boolean
  inputBinding:
    prefix: -screenlines
- id: in_out_tree_file
  doc: "outfile    [*.fdolmove] Phylip tree output file\n(optional)"
  type: File
  inputBinding:
    prefix: -outtreefile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_tree_file
  doc: "outfile    [*.fdolmove] Phylip tree output file\n(optional)"
  type: File
  outputBinding:
    glob: $(inputs.in_out_tree_file)
cwlVersion: v1.1
baseCommand:
- _fdolmove
