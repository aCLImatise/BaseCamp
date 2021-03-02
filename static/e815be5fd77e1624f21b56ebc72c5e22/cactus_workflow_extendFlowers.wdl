version 1.0

task CactusWorkflowExtendFlowers {
  command <<<
    cactus_workflow_extendFlowers
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}