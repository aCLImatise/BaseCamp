version 1.0

task Prettyplot {
  input {
    Boolean? graph
    Boolean? matrix_file
    Boolean? residues_per_line
    Boolean? blocks_per_line
    Boolean? c_similarity
    Boolean? c_other
    Boolean? do_colour
    Boolean? array_values_represent
    Boolean? identity
    Boolean? box_col
    Boolean? box_use
    Boolean? max_namelen
    Boolean? ratio
    Boolean? boolean_display_consensus
    Boolean? show_score
    Boolean? portrait
    String value_dot
    String etc_dot
    String alternative_menu_values
    String occurred_dot
  }
  command <<<
    _prettyplot \
      ~{value_dot} \
      ~{etc_dot} \
      ~{alternative_menu_values} \
      ~{occurred_dot} \
      ~{if (graph) then "-graph" else ""} \
      ~{if (matrix_file) then "-matrixfile" else ""} \
      ~{if (residues_per_line) then "-residuesperline" else ""} \
      ~{if (blocks_per_line) then "-blocksperline" else ""} \
      ~{if (c_similarity) then "-csimilarity" else ""} \
      ~{if (c_other) then "-cother" else ""} \
      ~{if (do_colour) then "-docolour" else ""} \
      ~{if (array_values_represent) then "-pair" else ""} \
      ~{if (identity) then "-identity" else ""} \
      ~{if (box_col) then "-boxcol" else ""} \
      ~{if (box_use) then "-boxuse" else ""} \
      ~{if (max_namelen) then "-maxnamelen" else ""} \
      ~{if (ratio) then "-ratio" else ""} \
      ~{if (boolean_display_consensus) then "-consensus" else ""} \
      ~{if (show_score) then "-showscore" else ""} \
      ~{if (portrait) then "-portrait" else ""}
  >>>
  parameter_meta {
    graph: "graph      [$EMBOSS_GRAPHICS value, or png] Graph type\\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\\ntekt, none, data, png, gif, svg)"
    matrix_file: "matrix     [EBLOSUM62 for protein, EDNAFULL for DNA]\\nThis is the scoring matrix file used when\\ncomparing sequences. By default it is the\\nfile 'EBLOSUM62' (for proteins) or the file\\n'EDNAFULL' (for nucleic sequences). These\\nfiles are found in the 'data' directory of\\nthe EMBOSS installation."
    residues_per_line: "integer    [50] The number of residues to be displayed\\non each line (Any integer value)"
    blocks_per_line: "integer    [1] Blocks of residues on each line (Integer\\n1 or more)"
    c_similarity: "string     [GREEN] Colour to display similar residues\\n(GREEN) (Any string)"
    c_other: "string     [BLACK] Colour to display other residues\\n(BLACK) (Any string)"
    do_colour: "boolean    [N] Colour residues by table oily, amide"
    array_values_represent: "array      [1.5,1.0,0.5] Values to represent identical\\nsimilar related"
    identity: "integer    [0] Only match those which are identical in\\nall sequences. (Integer 0 or more)"
    box_col: "boolean    [N] Colour the background in the boxes"
    box_use: "string     [GREY] Colour to be used for background.\\n(GREY) (Any string)"
    max_namelen: "integer    [10] Margin size for the sequence name. (Any\\ninteger value)"
    ratio: "float      [0.5] Plurality ratio for a consensus match\\n(Number from 0.000 to 1.000)"
    boolean_display_consensus: "boolean    [N] Display the consensus"
    show_score: "integer    [-1] Print residue scores (Any integer\\nvalue)"
    portrait: "boolean    [N] Set page to Portrait"
    value_dot: "-cidentity          string     [RED] Colour to display identical residues"
    etc_dot: "-shade              string     Set to BPLW for normal shading"
    alternative_menu_values: "-alternative        menu       [0] Values are 0:Normal collision check."
    occurred_dot: "2:If another residue has a greater than or"
  }
  output {
    File out_stdout = stdout()
  }
}