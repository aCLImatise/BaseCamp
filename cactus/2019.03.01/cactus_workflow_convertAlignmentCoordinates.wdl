version 1.0

task CactusWorkflowConvertAlignmentCoordinates {
  command <<<
    cactus_workflow_convertAlignmentCoordinates
  >>>
  output {
    File out_stdout = stdout()
  }
}