version 1.0

task BigMafToMaf {
  command <<<
    bigMafToMaf
  >>>
  output {
    File out_stdout = stdout()
  }
}