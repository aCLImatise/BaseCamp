version 1.0

task WrHierpy {
  command <<<
    wr_hier_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}