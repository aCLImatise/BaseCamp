version 1.0

task MergeCutupClusteringpy {
  input {
    String cut_up_clustering_result
  }
  command <<<
    merge_cutup_clustering_py \
      ~{cut_up_clustering_result}
  >>>
  parameter_meta {
    cut_up_clustering_result: "Input cutup clustering result."
  }
  output {
    File out_stdout = stdout()
  }
}