version 1.0

task Fdnacomp {
  input {
    Boolean? weights
    Boolean? out_gr_no
  }
  command <<<
    fdnacomp \
      ~{true="-weights" false="" weights} \
      ~{true="-outgrno" false="" out_gr_no}
  >>>
  parameter_meta {
    weights: "properties Phylip weights file (optional)"
    out_gr_no: "integer    [0] Species number to use as outgroup (Integer 0 or more)"
  }
}