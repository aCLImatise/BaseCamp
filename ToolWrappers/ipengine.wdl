version 1.0

task Ipengine {
  command <<<
    ipengine
  >>>
  output {
    File out_stdout = stdout()
  }
}