version 1.0

task ScmapindexclusterR {
  input {
    File? input_object_file
    String? cluster_col
    String? train_id
    Boolean? remove_mat
    File? output_plot_file
    File? output_object_file
  }
  command <<<
    scmap_index_cluster_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(cluster_col) then ("--cluster-col " +  '"' + cluster_col + '"') else ""} \
      ~{if defined(train_id) then ("--train-id " +  '"' + train_id + '"') else ""} \
      ~{if (remove_mat) then "--remove-mat" else ""} \
      ~{if defined(output_plot_file) then ("--output-plot-file " +  '"' + output_plot_file + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/scmap-cli:0.0.11--0"
  }
  parameter_meta {
    input_object_file: "singleCellExperiment object containing expression values and experimental information. Must have been appropriately prepared."
    cluster_col: "Column name in the 'colData' slot of the SingleCellExperiment object containing the cell classification information."
    train_id: "ID of the training dataset (optional)"
    remove_mat: "Should expression data be removed from index object? Default: FALSE"
    output_plot_file: "Optional file name in which to store a PNG-format heatmap-style index visualisation."
    output_object_file: "File name in which to store serialized R object of type 'SingleCellExperiment'."
  }
  output {
    File out_stdout = stdout()
    File out_output_plot_file = "${in_output_plot_file}"
    File out_output_object_file = "${in_output_object_file}"
  }
}