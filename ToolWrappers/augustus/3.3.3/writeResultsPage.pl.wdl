version 1.0

task WriteResultsPagepl {
  command <<<
    writeResultsPage_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}