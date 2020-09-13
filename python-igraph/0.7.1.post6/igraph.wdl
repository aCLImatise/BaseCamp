version 1.0

task Igraph {
  command <<<
    igraph
  >>>
  output {
    File out_stdout = stdout()
  }
}