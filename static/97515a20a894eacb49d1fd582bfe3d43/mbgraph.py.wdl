version 1.0

task Mbgraphpy {
  command <<<
    mbgraph_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}