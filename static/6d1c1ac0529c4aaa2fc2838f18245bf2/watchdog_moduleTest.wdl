version 1.0

task WatchdogmoduleTest {
  command <<<
    watchdog_moduleTest
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}