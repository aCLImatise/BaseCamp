version 1.0

task _fdnapenny {
  input {
    Boolean? out_gr_no
    Boolean? do_threshold
  }
  command <<<
    _fdnapenny \
      ~{true="-outgrno" false="" out_gr_no} \
      ~{true="-dothreshold" false="" do_threshold}
  >>>
  parameter_meta {
    out_gr_no: "integer    [0] Species number to use as outgroup (Integer 0 or more)"
    do_threshold: "toggle     [N] Use threshold parsimony"
  }
}