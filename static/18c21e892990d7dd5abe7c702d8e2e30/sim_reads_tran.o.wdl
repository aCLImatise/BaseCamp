version 1.0

task SimReadsTrano {
  command <<<
    sim_reads_tran_o
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}