class: CommandLineTool
id: prettyplot.cwl
inputs:
- id: in_graph
  doc: "graph      [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470,\
    \ hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)"
  type: boolean?
  inputBinding:
    prefix: -graph
- id: in_matrix_file
  doc: "matrix     [EBLOSUM62 for protein, EDNAFULL for DNA]\nThis is the scoring\
    \ matrix file used when\ncomparing sequences. By default it is the\nfile 'EBLOSUM62'\
    \ (for proteins) or the file\n'EDNAFULL' (for nucleic sequences). These\nfiles\
    \ are found in the 'data' directory of\nthe EMBOSS installation."
  type: boolean?
  inputBinding:
    prefix: -matrixfile
- id: in_residues_per_line
  doc: "integer    [50] The number of residues to be displayed\non each line (Any\
    \ integer value)"
  type: boolean?
  inputBinding:
    prefix: -residuesperline
- id: in_blocks_per_line
  doc: "integer    [1] Blocks of residues on each line (Integer\n1 or more)"
  type: boolean?
  inputBinding:
    prefix: -blocksperline
- id: in_c_similarity
  doc: "string     [GREEN] Colour to display similar residues\n(GREEN) (Any string)"
  type: boolean?
  inputBinding:
    prefix: -csimilarity
- id: in_c_other
  doc: "string     [BLACK] Colour to display other residues\n(BLACK) (Any string)"
  type: boolean?
  inputBinding:
    prefix: -cother
- id: in_do_colour
  doc: boolean    [N] Colour residues by table oily, amide
  type: boolean?
  inputBinding:
    prefix: -docolour
- id: in_pair
  doc: "array      [1.5,1.0,0.5] Values to represent identical\nsimilar related"
  type: boolean?
  inputBinding:
    prefix: -pair
- id: in_identity
  doc: "integer    [0] Only match those which are identical in\nall sequences. (Integer\
    \ 0 or more)"
  type: boolean?
  inputBinding:
    prefix: -identity
- id: in_box_col
  doc: boolean    [N] Colour the background in the boxes
  type: boolean?
  inputBinding:
    prefix: -boxcol
- id: in_box_use
  doc: "string     [GREY] Colour to be used for background.\n(GREY) (Any string)"
  type: boolean?
  inputBinding:
    prefix: -boxuse
- id: in_max_namelen
  doc: "integer    [10] Margin size for the sequence name. (Any\ninteger value)"
  type: boolean?
  inputBinding:
    prefix: -maxnamelen
- id: in_ratio
  doc: "float      [0.5] Plurality ratio for a consensus match\n(Number from 0.000\
    \ to 1.000)"
  type: boolean?
  inputBinding:
    prefix: -ratio
- id: in_boolean_display_consensus
  doc: boolean    [N] Display the consensus
  type: boolean?
  inputBinding:
    prefix: -consensus
- id: in_show_score
  doc: "integer    [-1] Print residue scores (Any integer\nvalue)"
  type: boolean?
  inputBinding:
    prefix: -showscore
- id: in_portrait
  doc: boolean    [N] Set page to Portrait
  type: boolean?
  inputBinding:
    prefix: -portrait
- id: in_value_dot
  doc: -cidentity          string     [RED] Colour to display identical residues
  type: string
  inputBinding:
    position: 0
- id: in_etc_dot
  doc: -shade              string     Set to BPLW for normal shading
  type: string
  inputBinding:
    position: 0
- id: in_alternative_menu_values
  doc: -alternative        menu       [0] Values are 0:Normal collision check.
  type: string
  inputBinding:
    position: 0
- id: in_occurred_dot
  doc: 2:If another residue has a greater than or
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
- prettyplot
