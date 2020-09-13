version 1.0

task TestGODAGpl {
  command <<<
    test_GO_DAG_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}