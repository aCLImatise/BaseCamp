version 1.0

task RandomizeMotifspl {
  command <<<
    randomizeMotifs_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}