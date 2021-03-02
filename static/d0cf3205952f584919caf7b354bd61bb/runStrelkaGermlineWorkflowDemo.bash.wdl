version 1.0

task RunStrelkaGermlineWorkflowDemobash {
  command <<<
    runStrelkaGermlineWorkflowDemo_bash
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}