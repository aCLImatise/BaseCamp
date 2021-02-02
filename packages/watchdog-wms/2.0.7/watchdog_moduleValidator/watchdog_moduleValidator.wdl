version 1.0

task WatchdogmoduleValidator {
  command <<<
    watchdog_moduleValidator
  >>>
  output {
    File out_stdout = stdout()
  }
}