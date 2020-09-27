version 1.0

task ClusteringAlignseqmatch {
  input {
    String id_mapping
    String seed_seqs
    String query_seqs
  }
  command <<<
    Clustering align_seq_match \
      ~{id_mapping} \
      ~{seed_seqs} \
      ~{query_seqs}
  >>>
  parameter_meta {
    id_mapping: ""
    seed_seqs: ""
    query_seqs: ""
  }
  output {
    File out_stdout = stdout()
  }
}