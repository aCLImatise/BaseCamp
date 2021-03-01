version 1.0

task WatchdoginstallCondaYaml {
  command <<<
    watchdog_installCondaYaml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}