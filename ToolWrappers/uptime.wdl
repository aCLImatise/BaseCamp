version 1.0

task Uptime {
  command <<<
    uptime
  >>>
  output {
    File out_stdout = stdout()
  }
}