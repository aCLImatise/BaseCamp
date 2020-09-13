version 1.0

task SOAPdenovo127mer {
  command <<<
    SOAPdenovo_127mer
  >>>
  output {
    File out_stdout = stdout()
  }
}