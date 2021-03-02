version 1.0

task PlanemoConfigInit {
  input {
    String project
  }
  command <<<
    planemo config_init \
      ~{project}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    project: ""
  }
  output {
    File out_stdout = stdout()
  }
}