version 1.0

task CactusWorkflowGetFlowers {
  command <<<
    cactus_workflow_getFlowers
  >>>
  output {
    File out_stdout = stdout()
  }
}