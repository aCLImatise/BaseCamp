version 1.0

task Fdnainvar {
  input {
    Boolean? print_data
  }
  command <<<
    _fdnainvar \
      ~{if (print_data) then "-printdata" else ""}
  >>>
  parameter_meta {
    print_data: "boolean    [N] Print data at start of run"
  }
  output {
    File out_stdout = stdout()
  }
}