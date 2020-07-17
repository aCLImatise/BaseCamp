version 1.0

task ScpredPredict.R {
  input {
    String? input_object
    String? pred_data
    String? test_labels
    String? cell_types_column
    String? threshold_level
    String? output_path
    String? plot_path
    String? confusion_table
  }
  command <<<
    scpred_predict.R \
      ~{if defined(input_object) then ("--input-object " +  '"' + input_object + '"') else ""} \
      ~{if defined(pred_data) then ("--pred-data " +  '"' + pred_data + '"') else ""} \
      ~{if defined(test_labels) then ("--test-labels " +  '"' + test_labels + '"') else ""} \
      ~{if defined(cell_types_column) then ("--cell-types-column " +  '"' + cell_types_column + '"') else ""} \
      ~{if defined(threshold_level) then ("--threshold-level " +  '"' + threshold_level + '"') else ""} \
      ~{if defined(output_path) then ("--output-path " +  '"' + output_path + '"') else ""} \
      ~{if defined(plot_path) then ("--plot-path " +  '"' + plot_path + '"') else ""} \
      ~{if defined(confusion_table) then ("--confusion-table " +  '"' + confusion_table + '"') else ""}
  >>>
  parameter_meta {
    input_object: "Path to the input object of scPred or seurat class in .rds format"
    pred_data: "Path to the input prediction matrix in .rds format"
    test_labels: "Path to the test labels file for evalutation of model performance in text format"
    cell_types_column: "Column name of true labels in provided metadata file"
    threshold_level: "Classification threshold value"
    output_path: "Output path for values predicted by the model in text format"
    plot_path: "Output path for prediction probabilities histograms in .png format"
    confusion_table: "Output path for confusion table in text format"
  }
}