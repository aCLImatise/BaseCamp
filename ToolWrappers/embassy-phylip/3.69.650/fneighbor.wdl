version 1.0

task Fneighbor {
  command <<<
    fneighbor
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}