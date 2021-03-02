version 1.0

task FilterFusionByNormalPaired {
  command <<<
    FilterFusionByNormalPaired
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}