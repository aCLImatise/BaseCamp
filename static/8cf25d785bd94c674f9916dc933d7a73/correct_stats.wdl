version 1.0

task CorrectStats {
  command <<<
    correct_stats
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}