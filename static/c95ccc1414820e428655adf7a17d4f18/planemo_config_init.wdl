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
    docker: "quay.io/biocontainers/planemo:0.74.3--py_0"
  }
  parameter_meta {
    project: ""
  }
  output {
    File out_stdout = stdout()
  }
}