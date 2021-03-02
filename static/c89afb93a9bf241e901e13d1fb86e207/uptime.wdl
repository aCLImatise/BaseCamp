version 1.0

task Uptime {
  command <<<
    uptime
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}