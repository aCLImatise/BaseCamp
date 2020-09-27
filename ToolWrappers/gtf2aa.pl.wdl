version 1.0

task Gtf2aapl {
  command <<<
    gtf2aa_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}