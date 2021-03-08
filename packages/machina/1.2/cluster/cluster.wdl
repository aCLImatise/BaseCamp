version 1.0

task Cluster {
  input {
    Boolean? output_ancestree_input
    File? clustering_input_filename
    Int? fwr
    Int? confidence_interval_used_clustering
    Int? confidence_interval_used_pooled
    Boolean? relabel_mutation_clusters
    Int? var_lb
  }
  command <<<
    cluster \
      ~{if (output_ancestree_input) then "-A" else ""} \
      ~{if defined(clustering_input_filename) then ("-C " +  '"' + clustering_input_filename + '"') else ""} \
      ~{if defined(fwr) then ("-FWR " +  '"' + fwr + '"') else ""} \
      ~{if defined(confidence_interval_used_clustering) then ("-a " +  '"' + confidence_interval_used_clustering + '"') else ""} \
      ~{if defined(confidence_interval_used_pooled) then ("-b " +  '"' + confidence_interval_used_pooled + '"') else ""} \
      ~{if (relabel_mutation_clusters) then "-r" else ""} \
      ~{if defined(var_lb) then ("-varLB " +  '"' + var_lb + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/machina:1.2--h176a8bc_1"
  }
  parameter_meta {
    output_ancestree_input: "Output AncesTree input file"
    clustering_input_filename: "Clustering input filename"
    fwr: "Family-wise error rate"
    confidence_interval_used_clustering: "Confidence interval used for clustering (default: 0.001)"
    confidence_interval_used_pooled: "Confidence interval used for pooled frequency matrix (default: 0.01)"
    relabel_mutation_clusters: "Relabel mutation clusters"
    var_lb: "Minimum number of variant reads (default: 3)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}