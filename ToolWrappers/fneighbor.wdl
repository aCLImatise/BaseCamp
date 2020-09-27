version 1.0

task Fneighbor {
  command <<<
    fneighbor
  >>>
  output {
    File out_stdout = stdout()
  }
}