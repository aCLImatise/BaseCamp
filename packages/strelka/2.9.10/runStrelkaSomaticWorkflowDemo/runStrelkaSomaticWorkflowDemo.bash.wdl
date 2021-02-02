version 1.0

task RunStrelkaSomaticWorkflowDemobash {
  command <<<
    runStrelkaSomaticWorkflowDemo_bash
  >>>
  output {
    File out_stdout = stdout()
  }
}