version 1.0

task ClusterGraphsR {
  command <<<
    cluster_graphs_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/gifrop:0.0.9--hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}