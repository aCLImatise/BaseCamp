version 1.0

task WatchdogreportGenerator {
  command <<<
    watchdog_reportGenerator
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}