version 1.0

task Fdnamove {
  input {
    Boolean? weights
    Boolean? out_gr_no
    Boolean? do_threshold
  }
  command <<<
    fdnamove \
      ~{true="-weights" false="" weights} \
      ~{true="-outgrno" false="" out_gr_no} \
      ~{true="-dothreshold" false="" do_threshold}
  >>>
  parameter_meta {
    weights: "properties Weights file - ignore sites with weight zero"
    out_gr_no: "integer    [0] Species number to use as outgroup (Integer 0 or more)"
    do_threshold: "toggle     [N] Use threshold parsimony"
  }
}