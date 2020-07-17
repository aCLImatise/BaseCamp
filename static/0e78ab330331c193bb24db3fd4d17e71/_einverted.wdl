version 1.0

task _einverted {
  input {
    Boolean? gap
    Boolean? threshold
    Boolean? match
    Boolean? mismatch
  }
  command <<<
    _einverted \
      ~{true="-gap" false="" gap} \
      ~{true="-threshold" false="" threshold} \
      ~{true="-match" false="" match} \
      ~{true="-mismatch" false="" mismatch}
  >>>
  parameter_meta {
    gap: "integer    [12] Gap penalty (Integer 0 or more)"
    threshold: "integer    [50] Minimum score threshold (Integer 0 or more)"
    match: "integer    [3] Match score (Integer 0 or more)"
    mismatch: "integer    [-4] Mismatch score (Integer up to 0)"
  }
}