version 1.0

task WatchdogworkflowValidator {
  command <<<
    watchdog_workflowValidator
  >>>
  output {
    File out_stdout = stdout()
  }
}