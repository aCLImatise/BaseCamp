version 1.0

task Fkitsch {
  input {
    Boolean? matrix_type
    Boolean? mine_v
    Boolean? power
    Boolean? neg_allowed
    Boolean? replicates
    Boolean? print_data
    String matrices
    File file
  }
  command <<<
    fkitsch \
      ~{matrices} \
      ~{file} \
      ~{if (matrix_type) then "-matrixtype" else ""} \
      ~{if (mine_v) then "-minev" else ""} \
      ~{if (power) then "-power" else ""} \
      ~{if (neg_allowed) then "-negallowed" else ""} \
      ~{if (replicates) then "-replicates" else ""} \
      ~{if (print_data) then "-printdata" else ""}
  >>>
  parameter_meta {
    matrix_type: "menu       [s] Type of data matrix (Values: s (Square);\\nu (Upper triangular); l (Lower triangular))"
    mine_v: "boolean    [N] Minimum evolution"
    power: "float      [2.0] Power (Any numeric value)"
    neg_allowed: "boolean    [N] Negative branch lengths allowed"
    replicates: "boolean    [N] Subreplicates"
    print_data: "boolean    [N] Print data at start of run"
    matrices: "[-intreefile]        tree       Phylip tree file (optional)"
    file: "Additional (Optional) qualifiers (* if not always prompted):"
  }
  output {
    File out_stdout = stdout()
  }
}