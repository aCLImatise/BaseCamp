version 1.0

task PlanemoCwlScript {
  input {
    String tool_path
    String job_path
  }
  command <<<
    planemo cwl_script \
      ~{tool_path} \
      ~{job_path}
  >>>
  parameter_meta {
    tool_path: ""
    job_path: ""
  }
}