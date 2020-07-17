version 1.0

task _fdolmove {
  input {
    Boolean? weights
    Boolean? anc_file
    Boolean? factor_file
    Boolean? method
    Boolean? do_threshold
  }
  command <<<
    _fdolmove \
      ~{true="-weights" false="" weights} \
      ~{true="-ancfile" false="" anc_file} \
      ~{true="-factorfile" false="" factor_file} \
      ~{true="-method" false="" method} \
      ~{true="-dothreshold" false="" do_threshold}
  >>>
  parameter_meta {
    weights: "properties Weights file"
    anc_file: "properties Ancestral states file"
    factor_file: "properties Factors file"
    method: "menu       [d] Parsimony method (Values: d (Dollo); p (Polymorphism))"
    do_threshold: "toggle     [N] Use threshold parsimony"
  }
}