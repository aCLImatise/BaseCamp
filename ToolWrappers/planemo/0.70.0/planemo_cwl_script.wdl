version 1.0

task PlanemoCwlScript {
  input {
    Boolean? no_container
    String tool_path
    String job_path
  }
  command <<<
    planemo cwl_script \
      ~{tool_path} \
      ~{job_path} \
      ~{if (no_container) then "--no_container" else ""}
  >>>
  parameter_meta {
    no_container: "--output_dir PATH\\n--base_dir PATH\\n--help             Show this message and exit.\\n"
    tool_path: ""
    job_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}