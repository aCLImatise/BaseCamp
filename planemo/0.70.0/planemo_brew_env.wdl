version 1.0

task PlanemoBrewEnv {
  input {
    String tool_path
  }
  command <<<
    planemo brew_env \
      ~{tool_path}
  >>>
  parameter_meta {
    tool_path: ""
  }
}