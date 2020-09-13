version 1.0

task ClusteringCluster {
  input {
    Boolean? no_clust_out
    File? dist_file
    File? id_mapping
    String? method
    File? outfile
    String? psi
    File? sample_mapping
    Float? step
    File? tree_file
    String clustering
    String? arg
  }
  command <<<
    Clustering cluster \
      ~{clustering} \
      ~{arg} \
      ~{if (no_clust_out) then "--no-clust-out" else ""} \
      ~{if defined(dist_file) then ("--dist-file " +  '"' + dist_file + '"') else ""} \
      ~{if defined(id_mapping) then ("--id-mapping " +  '"' + id_mapping + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(psi) then ("--psi " +  '"' + psi + '"') else ""} \
      ~{if defined(sample_mapping) then ("--sample-mapping " +  '"' + sample_mapping + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if defined(tree_file) then ("--tree-file " +  '"' + tree_file + '"') else ""}
  >>>
  parameter_meta {
    no_clust_out: "Don't write out clustering"
    dist_file: "Sorted column distance matrix file"
    id_mapping: "Id mapping file"
    method: "Clustering method to use (default=complete,\\nothers={upgma,single})"
    outfile: "Output file"
    psi: "Psi value (optional)"
    sample_mapping: "Sample mapping file"
    step: "Step value (default=.01 [1%])"
    tree_file: "Write out merges to file"
    clustering: ""
    arg: ""
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
    File out_tree_file = "${in_tree_file}"
  }
}