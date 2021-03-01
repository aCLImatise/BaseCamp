version 1.0

task PlanemoCwlScript {
  input {
    String script_dot
  }
  command <<<
    planemo cwl_script \
      ~{script_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    script_dot: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}