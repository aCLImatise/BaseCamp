version 1.0

task _fpars {
  input {
    Boolean? weights
    Boolean? method
    Boolean? max_trees
    Boolean? out_gr_no
    Boolean? do_threshold
    Boolean? step_box
    Boolean? an_cseq
  }
  command <<<
    _fpars \
      ~{true="-weights" false="" weights} \
      ~{true="-method" false="" method} \
      ~{true="-maxtrees" false="" max_trees} \
      ~{true="-outgrno" false="" out_gr_no} \
      ~{true="-dothreshold" false="" do_threshold} \
      ~{true="-stepbox" false="" step_box} \
      ~{true="-ancseq" false="" an_cseq}
  >>>
  parameter_meta {
    weights: "properties Weights file"
    method: "menu       [Wagner] Choose the parsimony method to use (Values: w (Wagner); c (Camin-Sokal))"
    max_trees: "integer    [100] Number of trees to save (Integer from 1 to 1000000)"
    out_gr_no: "integer    [0] Species number to use as outgroup (Integer 0 or more)"
    do_threshold: "toggle     [N] Use threshold parsimony"
    step_box: "boolean    [N] Print steps at each site"
    an_cseq: "boolean    [N] Print states at all nodes of tree"
  }
}