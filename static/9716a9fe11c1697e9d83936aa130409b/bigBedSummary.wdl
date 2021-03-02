version 1.0

task BigBedSummary {
  command <<<
    bigBedSummary
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}