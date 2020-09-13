version 1.0

task LynerCluster {
  input {
    Boolean? method
    Int? num_clusters
    String? mode_config
  }
  command <<<
    lyner cluster \
      ~{if (method) then "--method" else ""} \
      ~{if defined(num_clusters) then ("--num-clusters " +  '"' + num_clusters + '"') else ""} \
      ~{if defined(mode_config) then ("--mode-config " +  '"' + mode_config + '"') else ""}
  >>>
  parameter_meta {
    method: "[dbscan|k_means|mean_shift]"
    num_clusters: "The exact number of clusters to build."
    mode_config: ""
  }
  output {
    File out_stdout = stdout()
  }
}