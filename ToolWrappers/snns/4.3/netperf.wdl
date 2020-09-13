version 1.0

task Netperf {
  command <<<
    netperf
  >>>
  output {
    File out_stdout = stdout()
  }
}