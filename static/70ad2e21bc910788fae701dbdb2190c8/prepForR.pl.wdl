version 1.0

task PrepForRpl {
  command <<<
    prepForR_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}