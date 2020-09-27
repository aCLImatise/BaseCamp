version 1.0

task FilterFusionAlignmentsByFilteredFusions {
  command <<<
    FilterFusionAlignmentsByFilteredFusions
  >>>
  output {
    File out_stdout = stdout()
  }
}