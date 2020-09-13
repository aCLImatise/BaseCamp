version 1.0

task Ipython {
  command <<<
    ipython
  >>>
  output {
    File out_stdout = stdout()
  }
}