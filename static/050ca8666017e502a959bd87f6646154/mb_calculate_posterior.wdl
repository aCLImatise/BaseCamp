version 1.0

task Mbcalculateposterior {
  command <<<
    mb_calculate_posterior
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}