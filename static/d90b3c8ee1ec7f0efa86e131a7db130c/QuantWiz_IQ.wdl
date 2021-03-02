version 1.0

task QuantWizIQ {
  command <<<
    QuantWiz_IQ
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}