version 1.0

task IdbaTranTesto {
  command <<<
    idba_tran_test_o
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}