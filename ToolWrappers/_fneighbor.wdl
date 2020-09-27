version 1.0

task Fneighbor {
  command <<<
    _fneighbor
  >>>
  output {
    File out_stdout = stdout()
  }
}