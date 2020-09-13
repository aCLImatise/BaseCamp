version 1.0

task CorrectGaps {
  command <<<
    correctGaps
  >>>
  output {
    File out_stdout = stdout()
  }
}