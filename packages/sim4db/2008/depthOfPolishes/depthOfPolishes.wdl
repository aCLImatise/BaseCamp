version 1.0

task DepthOfPolishes {
  command <<<
    depthOfPolishes
  >>>
  output {
    File out_stdout = stdout()
  }
}