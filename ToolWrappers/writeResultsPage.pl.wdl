version 1.0

task WriteResultsPagepl {
  command <<<
    writeResultsPage_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}