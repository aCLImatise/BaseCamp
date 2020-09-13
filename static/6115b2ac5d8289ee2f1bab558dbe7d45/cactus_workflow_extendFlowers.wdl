version 1.0

task CactusWorkflowExtendFlowers {
  command <<<
    cactus_workflow_extendFlowers
  >>>
  output {
    File out_stdout = stdout()
  }
}