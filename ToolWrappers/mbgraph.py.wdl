version 1.0

task Mbgraphpy {
  command <<<
    mbgraph_py
  >>>
  output {
    File out_stdout = stdout()
  }
}