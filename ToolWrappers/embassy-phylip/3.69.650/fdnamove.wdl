version 1.0

task Fdnamove {
  input {
    Boolean? weights
    Boolean? out_gr_no
    Boolean? do_threshold
    Boolean? initial_tree
    Boolean? screen_width
    Boolean? screen_lines
    File? out_tree_file
  }
  command <<<
    fdnamove \
      ~{if (weights) then "-weights" else ""} \
      ~{if (out_gr_no) then "-outgrno" else ""} \
      ~{if (do_threshold) then "-dothreshold" else ""} \
      ~{if (initial_tree) then "-initialtree" else ""} \
      ~{if (screen_width) then "-screenwidth" else ""} \
      ~{if (screen_lines) then "-screenlines" else ""} \
      ~{if (out_tree_file) then "-outtreefile" else ""}
  >>>
  parameter_meta {
    weights: "properties Weights file - ignore sites with weight zero"
    out_gr_no: "integer    [0] Species number to use as outgroup\\n(Integer 0 or more)"
    do_threshold: "toggle     [N] Use threshold parsimony"
    initial_tree: "menu       [Arbitary] Initial tree (Values: a\\n(Arbitary); u (User); s (Specify))"
    screen_width: "integer    [80] Width of terminal screen in characters\\n(Any integer value)"
    screen_lines: "integer    [24] Number of lines on screen (Any integer\\nvalue)"
    out_tree_file: "outfile    [*.fdnamove] Phylip tree output file\\n(optional)"
  }
  output {
    File out_stdout = stdout()
    File out_out_tree_file = "${in_out_tree_file}"
  }
}