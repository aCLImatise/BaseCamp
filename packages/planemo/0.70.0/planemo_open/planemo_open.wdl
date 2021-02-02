version 1.0

task PlanemoOpen {
  input {
    File path
  }
  command <<<
    planemo open \
      ~{path}
  >>>
  parameter_meta {
    path: ""
  }
  output {
    File out_stdout = stdout()
  }
}