version 1.0

task CovermFilter {
  command <<<
    coverm filter
  >>>
  output {
    File out_stdout = stdout()
  }
}