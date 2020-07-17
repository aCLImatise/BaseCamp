version 1.0

task _fdollop {
  input {
    Boolean? weights
    Boolean? anc_file
    Boolean? method
  }
  command <<<
    _fdollop \
      ~{true="-weights" false="" weights} \
      ~{true="-ancfile" false="" anc_file} \
      ~{true="-method" false="" method}
  >>>
  parameter_meta {
    weights: "properties Phylip weights file (optional)"
    anc_file: "properties Ancestral states file"
    method: "menu       [d] Parsimony method (Values: d (Dollo); p (Polymorphism))"
  }
}