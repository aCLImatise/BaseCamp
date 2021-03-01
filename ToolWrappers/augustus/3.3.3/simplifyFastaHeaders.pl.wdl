version 1.0

task SimplifyFastaHeaderspl {
  command <<<
    simplifyFastaHeaders_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}