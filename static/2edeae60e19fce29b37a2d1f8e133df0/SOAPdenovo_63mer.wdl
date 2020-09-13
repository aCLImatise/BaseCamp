version 1.0

task SOAPdenovo63mer {
  command <<<
    SOAPdenovo_63mer
  >>>
  output {
    File out_stdout = stdout()
  }
}