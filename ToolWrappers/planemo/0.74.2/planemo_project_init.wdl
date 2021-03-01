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
    docker: "quay.io/biocontainers/planemo:0.74.2--py_0"
  }
  parameter_meta {
    project: ""
  }
  output {
    File out_stdout = stdout()
  }
}