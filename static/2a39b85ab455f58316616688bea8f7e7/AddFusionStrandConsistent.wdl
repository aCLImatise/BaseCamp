version 1.0

task AddFusionStrandConsistent {
  command <<<
    AddFusionStrandConsistent
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}