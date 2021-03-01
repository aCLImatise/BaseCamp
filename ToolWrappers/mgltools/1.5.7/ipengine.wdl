version 1.0

task Ipengine {
  command <<<
    ipengine
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}