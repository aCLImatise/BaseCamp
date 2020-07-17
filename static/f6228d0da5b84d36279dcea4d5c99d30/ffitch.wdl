version 1.0

task Ffitch {
  input {
    Boolean? matrix_type
    Boolean? mine_v
    Boolean? out_gr_no
    Boolean? power
  }
  command <<<
    ffitch \
      ~{true="-matrixtype" false="" matrix_type} \
      ~{true="-minev" false="" mine_v} \
      ~{true="-outgrno" false="" out_gr_no} \
      ~{true="-power" false="" power}
  >>>
  parameter_meta {
    matrix_type: "menu       [s] Type of input data matrix (Values: s (Square); u (Upper triangular); l (Lower triangular))"
    mine_v: "boolean    [N] Minimum evolution"
    out_gr_no: "integer    [0] Species number to use as outgroup (Integer 0 or more)"
    power: "float      [2.0] Power (Any numeric value)"
  }
}