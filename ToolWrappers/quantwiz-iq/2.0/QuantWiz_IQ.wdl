version 1.0

task QuantWizIQ {
  command <<<
    QuantWiz_IQ
  >>>
  output {
    File out_stdout = stdout()
  }
}