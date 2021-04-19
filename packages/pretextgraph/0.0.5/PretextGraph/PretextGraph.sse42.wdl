version 1.0

task PretextGraphsse42 {
  command <<<
    PretextGraph_sse42
  >>>
  runtime {
    docker: "quay.io/biocontainers/pretextgraph:0.0.5--h7d875b9_0"
  }
  output {
    File out_stdout = stdout()
  }
}