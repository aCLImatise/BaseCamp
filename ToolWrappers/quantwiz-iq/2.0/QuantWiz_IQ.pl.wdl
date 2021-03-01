version 1.0

task QuantWizIQpl {
  command <<<
    QuantWiz_IQ_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}