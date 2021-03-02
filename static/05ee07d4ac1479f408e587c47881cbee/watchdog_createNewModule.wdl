version 1.0

task WatchdogcreateNewModule {
  command <<<
    watchdog_createNewModule
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}