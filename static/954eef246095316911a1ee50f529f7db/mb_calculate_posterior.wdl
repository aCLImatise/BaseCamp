version 1.0

task Mbcalculateposterior {
  command <<<
    mb_calculate_posterior
  >>>
  output {
    File out_stdout = stdout()
  }
}