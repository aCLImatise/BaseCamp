version 1.0

task WatchdogdependencyTest {
  command <<<
    watchdog_dependencyTest
  >>>
  output {
    File out_stdout = stdout()
  }
}