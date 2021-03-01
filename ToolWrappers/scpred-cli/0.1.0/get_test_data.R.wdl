version 1.0

task GetTestDataR {
  command <<<
    get_test_data_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/scpred-cli:0.1.0--1"
  }
  output {
    File out_stdout = stdout()
  }
}