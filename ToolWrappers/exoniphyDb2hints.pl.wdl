version 1.0

task ExoniphyDb2hintspl {
  command <<<
    exoniphyDb2hints_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}