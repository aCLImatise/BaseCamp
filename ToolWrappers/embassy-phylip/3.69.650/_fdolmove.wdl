version 1.0

task Fdolmove {
  input {
    Boolean? weights
    Boolean? anc_file
    Boolean? factor_file
    Boolean? method
    Boolean? do_threshold
    Boolean? initial_tree
    Boolean? screen_width
    Boolean? screen_lines
    File? out_tree_file
  }
  command <<<
    _fdolmove \
      ~{if (weights) then "-weights" else ""} \
      ~{if (anc_file) then "-ancfile" else ""} \
      ~{if (factor_file) then "-factorfile" else ""} \
      ~{if (method) then "-method" else ""} \
      ~{if (do_threshold) then "-dothreshold" else ""} \
      ~{if (initial_tree) then "-initialtree" else ""} \
      ~{if (screen_width) then "-screenwidth" else ""} \
      ~{if (screen_lines) then "-screenlines" else ""} \
      ~{if (out_tree_file) then "-outtreefile" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    weights: "properties Weights file"
    anc_file: "properties Ancestral states file"
    factor_file: "properties Factors file"
    method: "menu       [d] Parsimony method (Values: d (Dollo); p\\n(Polymorphism))"
    do_threshold: "toggle     [N] Use threshold parsimony"
    initial_tree: "menu       [Arbitary] Initial tree (Values: a\\n(Arbitary); u (User); s (Specify))"
    screen_width: "integer    [80] Width of terminal screen in characters\\n(Any integer value)"
    screen_lines: "integer    [24] Number of lines on screen (Any integer\\nvalue)"
    out_tree_file: "outfile    [*.fdolmove] Phylip tree output file\\n(optional)"
  }
  output {
    File out_stdout = stdout()
    File out_out_tree_file = "${in_out_tree_file}"
  }
}