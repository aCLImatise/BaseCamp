version 1.0

task ZipHomerResultspl {
  command <<<
    zipHomerResults_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}