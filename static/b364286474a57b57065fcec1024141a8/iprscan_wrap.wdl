version 1.0

task IprscanWrap {
  command <<<
    iprscan_wrap
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}