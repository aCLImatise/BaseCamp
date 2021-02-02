version 1.0

task WatchdoginstallCondaYaml {
  command <<<
    watchdog_installCondaYaml
  >>>
  output {
    File out_stdout = stdout()
  }
}