version 1.0

task WatchdogdependencyTest {
  command <<<
    watchdog_dependencyTest
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}