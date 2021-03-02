version 1.0

task ScmapselectfeaturesR {
  input {
    File? input_object_file
    Int? n_features
    File? output_plot_file
    File? output_object_file
  }
  command <<<
    scmap_select_features_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(n_features) then ("--n-features " +  '"' + n_features + '"') else ""} \
      ~{if defined(output_plot_file) then ("--output-plot-file " +  '"' + output_plot_file + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_object_file: "singleCellExperiment object containing expression values and experimental information. Must have been appropriately prepared."
    n_features: "Number of the features to be selected."
    output_plot_file: "Optional file name in which to store a PNG-format plot of log(expression) versus log(dropout) distribution for all genes. Selected features are highlighted with the red colour."
    output_object_file: "File name in which to store serialized R object of type 'SingleCellExperiment'."
  }
  output {
    File out_stdout = stdout()
    File out_output_plot_file = "${in_output_plot_file}"
    File out_output_object_file = "${in_output_object_file}"
  }
}