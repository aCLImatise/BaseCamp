version 1.0

task GotreeTestsh {
  command <<<
    gotree_test_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}