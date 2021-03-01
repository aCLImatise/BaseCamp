version 1.0

task CovermFilter {
  command <<<
    coverm filter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}