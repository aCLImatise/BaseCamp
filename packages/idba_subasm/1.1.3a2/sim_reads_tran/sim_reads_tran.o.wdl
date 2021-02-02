version 1.0

task SimReadsTrano {
  command <<<
    sim_reads_tran_o
  >>>
  output {
    File out_stdout = stdout()
  }
}