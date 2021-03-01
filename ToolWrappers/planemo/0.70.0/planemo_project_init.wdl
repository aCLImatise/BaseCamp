version 1.0

task PlanemoProjectInit {
  input {
    String project
  }
  command <<<
    planemo project_init \
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