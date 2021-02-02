version 1.0

task Ipython2 {
  command <<<
    ipython2
  >>>
  output {
    File out_stdout = stdout()
  }
}