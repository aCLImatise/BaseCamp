version 1.0

task SimpleFastaHeaderspl {
  command <<<
    simpleFastaHeaders_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}