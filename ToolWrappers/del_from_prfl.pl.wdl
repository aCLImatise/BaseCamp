version 1.0

task DelFromPrflpl {
  command <<<
    del_from_prfl_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}