version 1.0

task _fdolpenny {
  input {
    Boolean? weights
    Boolean? anc_file
    Boolean? do_threshold
  }
  command <<<
    _fdolpenny \
      ~{true="-weights" false="" weights} \
      ~{true="-ancfile" false="" anc_file} \
      ~{true="-dothreshold" false="" do_threshold}
  >>>
  parameter_meta {
    weights: "properties Weights file"
    anc_file: "properties Ancestral states file"
    do_threshold: "toggle     [N] Use threshold parsimony"
  }
}