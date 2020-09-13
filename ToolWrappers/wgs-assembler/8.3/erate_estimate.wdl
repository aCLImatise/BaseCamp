version 1.0

task Erateestimate {
  command <<<
    erate_estimate
  >>>
  output {
    File out_stdout = stdout()
  }
}