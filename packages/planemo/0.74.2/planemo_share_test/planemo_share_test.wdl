version 1.0

task PlanemoShareTest {
  input {
    String file_path
  }
  command <<<
    planemo share_test \
      ~{file_path}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.2--py_0"
  }
  parameter_meta {
    file_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}