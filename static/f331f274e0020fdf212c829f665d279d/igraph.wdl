version 1.0

task Igraph {
  command <<<
    igraph
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}