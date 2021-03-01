version 1.0

task SOAPshpl {
  command <<<
    SOAPsh_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}