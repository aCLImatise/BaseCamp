version 1.0

task ScmapindexclusterR {
  input {
    File? input_object_file
    String? cluster_col
    String? train_id
    File? output_plot_file
    File? output_object_file
  }
  command <<<
    scmap_index_cluster_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(cluster_col) then ("--cluster-col " +  '"' + cluster_col + '"') else ""} \
      ~{if defined(train_id) then ("--train-id " +  '"' + train_id + '"') else ""} \
      ~{if defined(output_plot_file) then ("--output-plot-file " +  '"' + output_plot_file + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""}
  >>>
  parameter_meta {
    input_object_file: "singleCellExperiment object containing expression values and experimental information. Must have been appropriately prepared."
    cluster_col: "Column name in the 'colData' slot of the SingleCellExperiment object containing the cell classification information."
    train_id: "ID of the training dataset (optional)"
    output_plot_file: "Optional file name in which to store a PNG-format heatmap-style index visualisation."
    output_object_file: "File name in which to store serialized R object of type 'SingleCellExperiment'."
  }
  output {
    File out_stdout = stdout()
    File out_output_plot_file = "${in_output_plot_file}"
    File out_output_object_file = "${in_output_object_file}"
  }
}