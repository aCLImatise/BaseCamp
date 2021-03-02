version 1.0

task FilterPairpy {
  command <<<
    Filter_Pair_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/htseqqc:v1.0--pyh5bfb8f1_0"
  }
  output {
    File out_stdout = stdout()
  }
}