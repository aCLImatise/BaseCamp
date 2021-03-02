version 1.0

task BigBedToBed {
  command <<<
    bigBedToBed
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}