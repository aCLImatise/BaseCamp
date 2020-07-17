version 1.0

task MergeCutupClustering.py {
  input {
    String cut_up_clustering_result
  }
  command <<<
    merge_cutup_clustering.py \
      ~{cut_up_clustering_result}
  >>>
  parameter_meta {
    cut_up_clustering_result: "Input cutup clustering result."
  }
}