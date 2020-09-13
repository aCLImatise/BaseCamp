version 1.0

task DemotePosMap {
  command <<<
    demotePosMap
  >>>
  output {
    File out_stdout = stdout()
  }
}