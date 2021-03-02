version 1.0

task LynerClusteragglomerative {
  input {
    String? by
    Int? min_n_clusters
    Int? max_n_clusters
    Int? n_clusters
  }
  command <<<
    lyner cluster_agglomerative \
      ~{if defined(by) then ("--by " +  '"' + by + '"') else ""} \
      ~{if defined(min_n_clusters) then ("--min-nclusters " +  '"' + min_n_clusters + '"') else ""} \
      ~{if defined(max_n_clusters) then ("--max-nclusters " +  '"' + max_n_clusters + '"') else ""} \
      ~{if defined(n_clusters) then ("--nclusters " +  '"' + n_clusters + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    by: "Any comma separated combination of: 'trend',\\n'mean', 'median', 'mad', 'var', 'ontology'.\\nOrder is relevant."
    min_n_clusters: "The minimum number of clusters to build. NOTE:\\nThis option is mutually exclusive with:\\n[nclusters]."
    max_n_clusters: "The maximum number of clusters to build. NOTE:\\nThis option is mutually exclusive with:\\n[nclusters]."
    n_clusters: "The exact number of clusters to build. NOTE:\\nThis option is mutually exclusive with:\\n[min_nclusters, max_nclusters]."
  }
  output {
    File out_stdout = stdout()
  }
}