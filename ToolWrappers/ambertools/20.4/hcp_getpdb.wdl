version 1.0

task HcpGetpdb {
  command <<<
    hcp_getpdb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}