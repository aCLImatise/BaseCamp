version 1.0

task LynerCluster {
  input {
    Boolean? method
    Int? num_clusters
  }
  command <<<
    lyner cluster \
      ~{if (method) then "--method" else ""} \
      ~{if defined(num_clusters) then ("--num-clusters " +  '"' + num_clusters + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    method: "[dbscan|k_means|mean_shift]"
    num_clusters: "The exact number of clusters to build."
  }
  output {
    File out_stdout = stdout()
  }
}