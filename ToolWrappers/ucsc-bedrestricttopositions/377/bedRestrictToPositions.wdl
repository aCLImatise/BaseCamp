version 1.0

task BedRestrictToPositions {
  command <<<
    bedRestrictToPositions
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}