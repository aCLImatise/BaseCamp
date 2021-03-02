version 1.0

task WatchdogconfigureExamples {
  command <<<
    watchdog_configureExamples
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}