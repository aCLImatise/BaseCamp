version 1.0

task BigBedInfo {
  command <<<
    bigBedInfo
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}