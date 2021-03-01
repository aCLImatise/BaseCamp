version 1.0

task DepthOfPolishes {
  command <<<
    depthOfPolishes
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}