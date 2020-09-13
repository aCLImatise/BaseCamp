version 1.0

task SOAPdenovoTrans127mer {
  command <<<
    SOAPdenovo_Trans_127mer
  >>>
  output {
    File out_stdout = stdout()
  }
}