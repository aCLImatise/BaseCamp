version 1.0

task _fdnainvar {
  input {
    Boolean? weights
    Boolean? print_data
  }
  command <<<
    _fdnainvar \
      ~{true="-weights" false="" weights} \
      ~{true="-printdata" false="" print_data}
  >>>
  parameter_meta {
    weights: "properties Phylip weights file (optional)"
    print_data: "boolean    [N] Print data at start of run"
  }
}