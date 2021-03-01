version 1.0

task PlanemoVirtualenv {
  input {
    String virtual_env_path
  }
  command <<<
    planemo virtualenv \
      ~{virtual_env_path}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    virtual_env_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}