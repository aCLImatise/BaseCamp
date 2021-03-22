version 1.0

task GotreeTestsh {
  command <<<
    gotree_test_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/gotree:0.4.1--h375a9b1_0"
  }
  output {
    File out_stdout = stdout()
  }
}