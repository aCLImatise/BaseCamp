version 1.0

task Gxwfviz {
  command <<<
    gxwf_viz
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}