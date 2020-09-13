version 1.0

task CorrectStats {
  command <<<
    correct_stats
  >>>
  output {
    File out_stdout = stdout()
  }
}