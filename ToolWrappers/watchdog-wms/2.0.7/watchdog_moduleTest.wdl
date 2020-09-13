version 1.0

task WatchdogmoduleTest {
  command <<<
    watchdog_moduleTest
  >>>
  output {
    File out_stdout = stdout()
  }
}