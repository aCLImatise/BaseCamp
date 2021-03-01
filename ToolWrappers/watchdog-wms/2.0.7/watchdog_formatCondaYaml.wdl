version 1.0

task WatchdogformatCondaYaml {
  command <<<
    watchdog_formatCondaYaml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}