version 1.0

task RnazCMsearchpl {
  command <<<
    rnazCMsearch_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}