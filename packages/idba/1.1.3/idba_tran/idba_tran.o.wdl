version 1.0

task IdbaTrano {
  command <<<
    idba_tran_o
  >>>
  output {
    File out_stdout = stdout()
  }
}