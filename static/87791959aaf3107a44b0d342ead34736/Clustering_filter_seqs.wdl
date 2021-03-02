version 1.0

task ClusteringFilterseqs {
  input {
    String ids_file
    String seq_file
    String? remove
  }
  command <<<
    Clustering filter_seqs \
      ~{ids_file} \
      ~{seq_file} \
      ~{remove}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ids_file: ""
    seq_file: ""
    remove: ""
  }
  output {
    File out_stdout = stdout()
  }
}