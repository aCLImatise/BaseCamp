version 1.0

task TestGODAGpl {
  command <<<
    test_GO_DAG_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}