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
    docker: "quay.io/biocontainers/planemo:0.74.2--py_0"
  }
  parameter_meta {
    virtual_env_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}