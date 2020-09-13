version 1.0

task WatchdogconfigureExamples {
  command <<<
    watchdog_configureExamples
  >>>
  output {
    File out_stdout = stdout()
  }
}