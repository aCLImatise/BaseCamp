version 1.0

task WatchdogrefBookGenerator {
  command <<<
    watchdog_refBookGenerator
  >>>
  output {
    File out_stdout = stdout()
  }
}