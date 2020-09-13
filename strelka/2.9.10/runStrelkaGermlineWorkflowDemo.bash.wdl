version 1.0

task RunStrelkaGermlineWorkflowDemobash {
  command <<<
    runStrelkaGermlineWorkflowDemo_bash
  >>>
  output {
    File out_stdout = stdout()
  }
}