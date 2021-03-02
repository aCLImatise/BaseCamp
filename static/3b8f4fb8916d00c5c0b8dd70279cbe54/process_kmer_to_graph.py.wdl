version 1.0

task ProcessKmerToGraphpy {
  command <<<
    process_kmer_to_graph_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/md-cogent:8.0.0--pyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}