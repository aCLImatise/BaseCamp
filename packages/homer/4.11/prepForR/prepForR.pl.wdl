version 1.0

task PrepForRpl {
  command <<<
    prepForR_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}