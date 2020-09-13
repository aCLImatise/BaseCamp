version 1.0

task FilterFusionByNormalPaired {
  command <<<
    FilterFusionByNormalPaired
  >>>
  output {
    File out_stdout = stdout()
  }
}