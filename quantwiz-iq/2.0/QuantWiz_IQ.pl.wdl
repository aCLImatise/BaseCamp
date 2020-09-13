version 1.0

task QuantWizIQpl {
  command <<<
    QuantWiz_IQ_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}