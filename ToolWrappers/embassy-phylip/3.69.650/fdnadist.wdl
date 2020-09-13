version 1.0

task Fdnadist {
  input {
    Boolean? weights
    Boolean? lower
    Boolean? print_data
  }
  command <<<
    fdnadist \
      ~{if (weights) then "-weights" else ""} \
      ~{if (lower) then "-lower" else ""} \
      ~{if (print_data) then "-printdata" else ""}
  >>>
  parameter_meta {
    weights: "properties Weights file"
    lower: "boolean    [N] Output as a lower triangular distance"
    print_data: "boolean    [N] Print data at start of run"
  }
  output {
    File out_stdout = stdout()
  }
}