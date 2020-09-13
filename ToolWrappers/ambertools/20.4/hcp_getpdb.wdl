version 1.0

task HcpGetpdb {
  command <<<
    hcp_getpdb
  >>>
  output {
    File out_stdout = stdout()
  }
}