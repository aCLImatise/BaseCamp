version 1.0

task PlanemoShedBuild {
  input {
    String tool_path
  }
  command <<<
    planemo shed_build \
      ~{tool_path}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.3--py_0"
  }
  parameter_meta {
    tool_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}