version 1.0

task Ffitch {
  input {
    Boolean? matrix_type
    Boolean? mine_v
    Boolean? out_gr_no
    Boolean? power
    Boolean? replicates
    Boolean? print_data
    String matrices
  }
  command <<<
    _ffitch \
      ~{matrices} \
      ~{if (matrix_type) then "-matrixtype" else ""} \
      ~{if (mine_v) then "-minev" else ""} \
      ~{if (out_gr_no) then "-outgrno" else ""} \
      ~{if (power) then "-power" else ""} \
      ~{if (replicates) then "-replicates" else ""} \
      ~{if (print_data) then "-printdata" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    matrix_type: "menu       [s] Type of input data matrix (Values: s\\n(Square); u (Upper triangular); l (Lower\\ntriangular))"
    mine_v: "boolean    [N] Minimum evolution"
    out_gr_no: "integer    [0] Species number to use as outgroup\\n(Integer 0 or more)"
    power: "float      [2.0] Power (Any numeric value)"
    replicates: "boolean    [N] Subreplicates"
    print_data: "boolean    [N] Print data at start of run"
    matrices: "[-intreefile]        tree       Phylip tree file (optional)"
  }
  output {
    File out_stdout = stdout()
  }
}