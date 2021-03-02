version 1.0

task Wifistatus {
  command <<<
    wifi_status
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}