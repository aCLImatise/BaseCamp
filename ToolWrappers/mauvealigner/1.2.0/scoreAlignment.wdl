version 1.0

task ScoreAlignment {
  command <<<
    scoreAlignment
  >>>
  output {
    File out_stdout = stdout()
  }
}