version 1.0

task _fkitsch {
  input {
    Boolean? matrix_type
    Boolean? mine_v
  }
  command <<<
    _fkitsch \
      ~{true="-matrixtype" false="" matrix_type} \
      ~{true="-minev" false="" mine_v}
  >>>
  parameter_meta {
    matrix_type: "menu       [s] Type of data matrix (Values: s (Square); u (Upper triangular); l (Lower triangular))"
    mine_v: "boolean    [N] Minimum evolution"
  }
}