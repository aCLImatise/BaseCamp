version 1.0

task TreeClusterpy {
  input {
    File? input_tree_file
    File? output_file_default
    Int? threshold
    String? support
    Int? method
    String? threshold_free
    Boolean? verbose
  }
  command <<<
    TreeCluster_py \
      ~{if defined(input_tree_file) then ("--input " +  '"' + input_tree_file + '"') else ""} \
      ~{if defined(output_file_default) then ("--output " +  '"' + output_file_default + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(support) then ("--support " +  '"' + support + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(threshold_free) then ("--threshold_free " +  '"' + threshold_free + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/treecluster:1.0.3--pyh3252c3a_0"
  }
  parameter_meta {
    input_tree_file: "Input Tree File (default: stdin)"
    output_file_default: "Output File (default: stdout)"
    threshold: "Length Threshold (default: None)"
    support: "Branch Support Threshold (default: -inf)"
    method: "Clustering Method (options: avg_clade, leaf_dist_avg,\\nleaf_dist_max, leaf_dist_min, length, length_clade,\\nmax, max_clade, med_clade, root_dist, single_linkage,\\nsingle_linkage_cut, single_linkage_union, sum_branch,\\nsum_branch_clade) (default: max_clade)"
    threshold_free: "Threshold-Free Approach (options: argmax_clusters)\\n(default: None)"
    verbose: "Verbose Mode (default: False)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_default = "${in_output_file_default}"
  }
}