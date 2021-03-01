version 1.0

task RunStrelkaSomaticWorkflowDemobash {
  command <<<
    runStrelkaSomaticWorkflowDemo_bash
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}