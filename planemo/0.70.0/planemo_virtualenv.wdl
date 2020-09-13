version 1.0

task PlanemoVirtualenv {
  input {
    String? python
    String virtual_env_path
  }
  command <<<
    planemo virtualenv \
      ~{virtual_env_path} \
      ~{if defined(python) then ("--python " +  '"' + python + '"') else ""}
  >>>
  parameter_meta {
    python: ""
    virtual_env_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}