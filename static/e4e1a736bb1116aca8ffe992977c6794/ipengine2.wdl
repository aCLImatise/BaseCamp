version 1.0

task Ipengine2 {
  command <<<
    ipengine2
  >>>
  output {
    File out_stdout = stdout()
  }
}