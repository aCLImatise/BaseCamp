version 1.0

task FilterFusionAlignmentsByFilteredFusions {
  command <<<
    FilterFusionAlignmentsByFilteredFusions
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}