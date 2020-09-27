version 1.0

task PlanemoShedBuild {
  input {
    String tool_path
  }
  command <<<
    planemo shed_build \
      ~{tool_path}
  >>>
  parameter_meta {
    tool_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}