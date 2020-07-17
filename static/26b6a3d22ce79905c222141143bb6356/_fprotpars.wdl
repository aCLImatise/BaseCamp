version 1.0

task _fprotpars {
  input {
    Boolean? weights
    Boolean? out_gr_no
    Boolean? do_threshold
    Boolean? step_box
    Boolean? an_cseq
  }
  command <<<
    _fprotpars \
      ~{true="-weights" false="" weights} \
      ~{true="-outgrno" false="" out_gr_no} \
      ~{true="-dothreshold" false="" do_threshold} \
      ~{true="-stepbox" false="" step_box} \
      ~{true="-ancseq" false="" an_cseq}
  >>>
  parameter_meta {
    weights: "properties Phylip weights file (optional)"
    out_gr_no: "integer    [0] Species number to use as outgroup (Integer 0 or more)"
    do_threshold: "toggle     [N] Use threshold parsimony"
    step_box: "boolean    [N] Print steps at each site"
    an_cseq: "boolean    [N] Print sequences at all nodes of tree"
  }
}