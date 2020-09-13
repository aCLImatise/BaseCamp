version 1.0

task WatchdogcreateNewModule {
  command <<<
    watchdog_createNewModule
  >>>
  output {
    File out_stdout = stdout()
  }
}