version 1.0

task Gxwfviz {
  command <<<
    gxwf_viz
  >>>
  output {
    File out_stdout = stdout()
  }
}