version 1.0

task Minxoffline {
  command <<<
    minx_offline
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}