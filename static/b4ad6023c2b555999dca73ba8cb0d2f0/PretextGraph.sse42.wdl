version 1.0

task PretextGraphsse42 {
  command <<<
    PretextGraph_sse42
  >>>
  runtime {
    docker: "quay.io/biocontainers/pretextgraph:0.0.4--hc9558a2_0"
  }
  output {
    File out_stdout = stdout()
  }
}