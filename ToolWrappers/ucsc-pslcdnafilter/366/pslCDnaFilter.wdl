version 1.0

task PslCDnaFilter {
  command <<<
    pslCDnaFilter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}