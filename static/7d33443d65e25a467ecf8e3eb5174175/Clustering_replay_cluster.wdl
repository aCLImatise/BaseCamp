version 1.0

task ClusteringReplaycluster {
  input {
    String cluster_replay
    String id_mapping
    String sample_mapping
    String merges_file
    String cluster_out
  }
  command <<<
    Clustering replay_cluster \
      ~{cluster_replay} \
      ~{id_mapping} \
      ~{sample_mapping} \
      ~{merges_file} \
      ~{cluster_out}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cluster_replay: ""
    id_mapping: ""
    sample_mapping: ""
    merges_file: ""
    cluster_out: ""
  }
  output {
    File out_stdout = stdout()
  }
}