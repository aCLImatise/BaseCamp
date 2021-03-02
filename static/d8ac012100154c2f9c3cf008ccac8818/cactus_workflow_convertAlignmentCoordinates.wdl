version 1.0

task CactusWorkflowConvertAlignmentCoordinates {
  command <<<
    cactus_workflow_convertAlignmentCoordinates
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}