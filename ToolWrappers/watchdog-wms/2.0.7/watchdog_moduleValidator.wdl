version 1.0

task WatchdogmoduleValidator {
  command <<<
    watchdog_moduleValidator
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}