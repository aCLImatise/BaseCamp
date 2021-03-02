version 1.0

task Fneighbor {
  command <<<
    _fneighbor
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}