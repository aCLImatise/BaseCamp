version 1.0

task WatchdogreportGenerator {
  command <<<
    watchdog_reportGenerator
  >>>
  output {
    File out_stdout = stdout()
  }
}