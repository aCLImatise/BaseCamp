version 1.0

task PretextGraph {
  command <<<
    PretextGraph
  >>>
  runtime {
    docker: "quay.io/biocontainers/pretextgraph:0.0.4--hc9558a2_0"
  }
  output {
    File out_stdout = stdout()
  }
}