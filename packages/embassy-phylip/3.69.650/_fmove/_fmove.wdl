version 1.0

task Fmove {
  input {
    Boolean? weights
    Boolean? anc_file
    Boolean? factor_file
    Boolean? method
    Boolean? out_gr_no
    Boolean? threshold
    Boolean? initial_tree
    Boolean? screen_width
    Boolean? screen_lines
    File? out_tree_file
  }
  command <<<
    _fmove \
      ~{if (weights) then "-weights" else ""} \
      ~{if (anc_file) then "-ancfile" else ""} \
      ~{if (factor_file) then "-factorfile" else ""} \
      ~{if (method) then "-method" else ""} \
      ~{if (out_gr_no) then "-outgrno" else ""} \
      ~{if (threshold) then "-threshold" else ""} \
      ~{if (initial_tree) then "-initialtree" else ""} \
      ~{if (screen_width) then "-screenwidth" else ""} \
      ~{if (screen_lines) then "-screenlines" else ""} \
      ~{if (out_tree_file) then "-outtreefile" else ""}
  >>>
  parameter_meta {
    weights: "properties Weights file"
    anc_file: "properties Ancestral states file"
    factor_file: "properties Factors file"
    method: "menu       [Wagner] Choose the method to use (Values: w\\n(Wagner); c (Camin-Sokal); m (Mixed))"
    out_gr_no: "integer    [0] Species number to use as outgroup\\n(Integer 0 or more)"
    threshold: "float      [$(infile.discretesize)] Threshold value\\n(Number 0.000 or more)"
    initial_tree: "menu       [Arbitary] Initial tree (Values: a\\n(Arbitary); u (User); s (Specify))"
    screen_width: "integer    [80] Width of terminal screen in characters\\n(Any integer value)"
    screen_lines: "integer    [24] Number of lines on screen (Any integer\\nvalue)"
    out_tree_file: "outfile    [*.fmove] Phylip tree output file (optional)"
  }
  output {
    File out_stdout = stdout()
    File out_out_tree_file = "${in_out_tree_file}"
  }
}