version 1.0

task FdnainvarAlignments {
  input {
    Boolean? weights
    Boolean? print_data
    File file
  }
  command <<<
    _fdnainvar alignments \
      ~{file} \
      ~{if (weights) then "-weights" else ""} \
      ~{if (print_data) then "-printdata" else ""}
  >>>
  parameter_meta {
    weights: "properties Phylip weights file (optional)"
    print_data: "boolean    [N] Print data at start of run"
    file: "Additional (Optional) qualifiers (* if not always prompted):"
  }
  output {
    File out_stdout = stdout()
  }
}