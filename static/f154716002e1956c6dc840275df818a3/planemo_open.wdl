version 1.0

task PlanemoOpen {
  input {
    File path
  }
  command <<<
    planemo open \
      ~{path}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.2--py_0"
  }
  parameter_meta {
    path: ""
  }
  output {
    File out_stdout = stdout()
  }
}