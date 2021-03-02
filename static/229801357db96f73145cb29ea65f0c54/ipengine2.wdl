version 1.0

task Ipengine2 {
  command <<<
    ipengine2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}