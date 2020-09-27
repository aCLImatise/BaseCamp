version 1.0

task WatchdogformatCondaYaml {
  command <<<
    watchdog_formatCondaYaml
  >>>
  output {
    File out_stdout = stdout()
  }
}