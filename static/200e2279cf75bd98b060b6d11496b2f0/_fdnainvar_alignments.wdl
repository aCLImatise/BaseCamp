version 1.0

task FdnainvarAlignments {
  input {
    Boolean? weights
    Boolean? print_data
    File additional_optional_qualifiers
  }
  command <<<
    _fdnainvar alignments \
      ~{additional_optional_qualifiers} \
      ~{if (weights) then "-weights" else ""} \
      ~{if (print_data) then "-printdata" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    weights: "properties Phylip weights file (optional)"
    print_data: "boolean    [N] Print data at start of run"
    additional_optional_qualifiers: "Additional (Optional) qualifiers (* if not always prompted):"
  }
  output {
    File out_stdout = stdout()
  }
}