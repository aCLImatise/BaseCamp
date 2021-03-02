version 1.0

task CactusWorkflowFlowerStats {
  command <<<
    cactus_workflow_flowerStats
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}