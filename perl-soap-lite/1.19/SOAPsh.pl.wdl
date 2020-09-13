version 1.0

task SOAPshpl {
  command <<<
    SOAPsh_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}