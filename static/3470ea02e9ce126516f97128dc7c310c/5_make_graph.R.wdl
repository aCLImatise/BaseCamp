version 1.0

task _makeGraphR {
  command <<<
    __make_graph_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/sat-bsa:1.12--0"
  }
  output {
    File out_stdout = stdout()
  }
}