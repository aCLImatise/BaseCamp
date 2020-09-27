version 1.0

task AddFusionStrandConsistent {
  command <<<
    AddFusionStrandConsistent
  >>>
  output {
    File out_stdout = stdout()
  }
}