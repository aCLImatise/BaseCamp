version 1.0

task TMscore {
  command <<<
    TMscore
  >>>
  output {
    File out_stdout = stdout()
  }
}