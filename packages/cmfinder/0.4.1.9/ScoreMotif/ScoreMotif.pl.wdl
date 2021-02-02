version 1.0

task ScoreMotifpl {
  command <<<
    ScoreMotif_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}