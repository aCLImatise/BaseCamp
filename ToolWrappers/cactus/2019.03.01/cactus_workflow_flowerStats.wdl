version 1.0

task CactusWorkflowFlowerStats {
  command <<<
    cactus_workflow_flowerStats
  >>>
  output {
    File out_stdout = stdout()
  }
}