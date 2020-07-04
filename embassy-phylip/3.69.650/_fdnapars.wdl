version 1.0

task _fdnapars {
  input {
    Boolean? weights
    Boolean? max_trees
    Boolean? transversion
    Boolean? out_gr_no
    Boolean? do_threshold
  }
  command <<<
    _fdnapars \
      ~{true="-weights" false="" weights} \
      ~{true="-maxtrees" false="" max_trees} \
      ~{true="-transversion" false="" transversion} \
      ~{true="-outgrno" false="" out_gr_no} \
      ~{true="-dothreshold" false="" do_threshold}
  >>>
  parameter_meta {
    weights: "properties Weights file"
    max_trees: "integer    [10000] Number of trees to save (Integer from 1 to 1000000)"
    transversion: "boolean    [N] Use transversion parsimony"
    out_gr_no: "integer    [0] Species number to use as outgroup (Integer 0 or more)"
    do_threshold: "toggle     [N] Use threshold parsimony"
  }
}