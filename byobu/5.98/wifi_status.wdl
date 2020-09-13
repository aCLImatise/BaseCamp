version 1.0

task Wifistatus {
  command <<<
    wifi_status
  >>>
  output {
    File out_stdout = stdout()
  }
}