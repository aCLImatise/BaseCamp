version 1.0

task WatchdogrefBookGenerator {
  command <<<
    watchdog_refBookGenerator
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}