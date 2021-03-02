version 1.0

task Netperf {
  command <<<
    netperf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}