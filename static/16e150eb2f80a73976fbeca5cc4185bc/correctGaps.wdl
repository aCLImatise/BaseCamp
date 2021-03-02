version 1.0

task CorrectGaps {
  command <<<
    correctGaps
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}