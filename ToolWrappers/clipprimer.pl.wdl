version 1.0

task Clipprimerpl {
  command <<<
    clipprimer_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}