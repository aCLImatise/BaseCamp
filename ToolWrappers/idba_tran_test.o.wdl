version 1.0

task IdbaTranTesto {
  command <<<
    idba_tran_test_o
  >>>
  output {
    File out_stdout = stdout()
  }
}