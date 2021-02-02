version 1.0

task SOAPdenovoTrans31mer {
  command <<<
    SOAPdenovo_Trans_31mer
  >>>
  output {
    File out_stdout = stdout()
  }
}