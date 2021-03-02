version 1.0

task DemotePosMap {
  command <<<
    demotePosMap
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}