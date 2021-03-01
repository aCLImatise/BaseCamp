version 1.0

task CactusWorkflowGetFlowers {
  command <<<
    cactus_workflow_getFlowers
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}