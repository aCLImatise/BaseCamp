version 1.0

task WatchdogworkflowValidator {
  command <<<
    watchdog_workflowValidator
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}