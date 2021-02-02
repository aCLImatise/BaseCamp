version 1.0

task ClusteringClustertobiom {
  input {
    String cluster_file
    String cut_off
  }
  command <<<
    Clustering cluster_to_biom \
      ~{cluster_file} \
      ~{cut_off}
  >>>
  parameter_meta {
    cluster_file: ""
    cut_off: ""
  }
  output {
    File out_stdout = stdout()
  }
}