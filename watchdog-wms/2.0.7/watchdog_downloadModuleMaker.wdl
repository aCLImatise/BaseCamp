version 1.0

task WatchdogdownloadModuleMaker {
  command <<<
    watchdog_downloadModuleMaker
  >>>
  output {
    File out_stdout = stdout()
  }
}