version 1.0

task ScaterfilterR {
  input {
    File? input_object_file
    String? subset_cell_variables
    String? low_cell_thresholds
    String? high_cell_thresholds
    File? cells_use
    File? cells_discard
    String? subset_feature_variables
    String? low_feature_thresholds
    String? high_feature_thresholds
    File? features_use
    File? output_object_file
    File? output_cell_select_file
    File? output_feature_select_file
  }
  command <<<
    scater_filter_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(subset_cell_variables) then ("--subset-cell-variables " +  '"' + subset_cell_variables + '"') else ""} \
      ~{if defined(low_cell_thresholds) then ("--low-cell-thresholds " +  '"' + low_cell_thresholds + '"') else ""} \
      ~{if defined(high_cell_thresholds) then ("--high-cell-thresholds " +  '"' + high_cell_thresholds + '"') else ""} \
      ~{if defined(cells_use) then ("--cells-use " +  '"' + cells_use + '"') else ""} \
      ~{if defined(cells_discard) then ("--cells-discard " +  '"' + cells_discard + '"') else ""} \
      ~{if defined(subset_feature_variables) then ("--subset-feature-variables " +  '"' + subset_feature_variables + '"') else ""} \
      ~{if defined(low_feature_thresholds) then ("--low-feature-thresholds " +  '"' + low_feature_thresholds + '"') else ""} \
      ~{if defined(high_feature_thresholds) then ("--high-feature-thresholds " +  '"' + high_feature_thresholds + '"') else ""} \
      ~{if defined(features_use) then ("--features-use " +  '"' + features_use + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""} \
      ~{if defined(output_cell_select_file) then ("--output-cellselect-file " +  '"' + output_cell_select_file + '"') else ""} \
      ~{if defined(output_feature_select_file) then ("--output-featureselect-file " +  '"' + output_feature_select_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_object_file: "A serialized SingleCellExperiment object file in RDS format."
    subset_cell_variables: "Comma-separated parameters to subset on. Any variable available in the colData of the supplied object."
    low_cell_thresholds: "Comma-separated low cutoffs for the parameters (default is -Inf)."
    high_cell_thresholds: "Comma-separated high cutoffs for the parameters (default is Inf)."
    cells_use: "Comma-separated list of cell names to use as a subset. Alternatively, text file with one cell per line providing cell names to use as a subset."
    cells_discard: "Comma-separated list of cell names to discard as a subset. Alternatively, text file with one cell per line providing cell names to discard as a subset."
    subset_feature_variables: "Comma-separated parameters to subset on. Any variable available in the colData of the supplied object."
    low_feature_thresholds: "Comma-separated low cutoffs for the parameters (default is -Inf)."
    high_feature_thresholds: "Comma-separated high cutoffs for the parameters (default is Inf)."
    features_use: "Comma-separated list of feature names to use as a subset. Alternatively, text file with one feature per line providing feature names to use as a subset."
    output_object_file: "File name in which to store serialized R object of type 'Seurat'.'"
    output_cell_select_file: "File name in which to store a matrix showing results of applying individual cell selection criteria."
    output_feature_select_file: "File name in which to store a matrix showing results of applying individual feature selection criteria."
  }
  output {
    File out_stdout = stdout()
    File out_output_object_file = "${in_output_object_file}"
    File out_output_cell_select_file = "${in_output_cell_select_file}"
    File out_output_feature_select_file = "${in_output_feature_select_file}"
  }
}