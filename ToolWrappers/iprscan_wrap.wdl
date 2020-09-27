version 1.0

task IprscanWrap {
  command <<<
    iprscan_wrap
  >>>
  output {
    File out_stdout = stdout()
  }
}