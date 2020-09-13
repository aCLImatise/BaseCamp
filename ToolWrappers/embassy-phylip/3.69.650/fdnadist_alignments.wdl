version 1.0

task FdnadistAlignments {
  input {
    Boolean? method
    Boolean? weights
    Boolean? lower
    Boolean? print_data
    File file
    String matrix
  }
  command <<<
    fdnadist alignments \
      ~{file} \
      ~{matrix} \
      ~{if (method) then "-method" else ""} \
      ~{if (weights) then "-weights" else ""} \
      ~{if (lower) then "-lower" else ""} \
      ~{if (print_data) then "-printdata" else ""}
  >>>
  parameter_meta {
    method: "menu       [F84 distance model] Choose the method to\\nuse (Values: f (F84 distance model); k\\n(Kimura 2-parameter distance); j\\n(Jukes-Cantor distance); l (LogDet\\ndistance); s (Similarity table))"
    weights: "properties Weights file"
    lower: "boolean    [N] Output as a lower triangular distance"
    print_data: "boolean    [N] Print data at start of run"
    file: "Additional (Optional) qualifiers (* if not always prompted):"
    matrix: "-humanreadable      boolean    [@($(method)==s?Y:N)] Output as a"
  }
  output {
    File out_stdout = stdout()
  }
}