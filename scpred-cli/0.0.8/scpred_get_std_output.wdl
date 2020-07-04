version 1.0

task ScpredGetStdOutput.R {
  input {
    String? predictions_file
    String? cell_id_col
    Boolean? get_scores
    String? classifier
    String? output_table
  }
  command <<<
    scpred_get_std_output.R \
      ~{if defined(predictions_file) then ("--predictions-file " +  '"' + predictions_file + '"') else ""} \
      ~{if defined(cell_id_col) then ("--cell-id-col " +  '"' + cell_id_col + '"') else ""} \
      ~{true="--get-scores" false="" get_scores} \
      ~{if defined(classifier) then ("--classifier " +  '"' + classifier + '"') else ""} \
      ~{if defined(output_table) then ("--output-table " +  '"' + output_table + '"') else ""}
  >>>
  parameter_meta {
    predictions_file: "Path to the predictions file in text format"
    cell_id_col: "Cell id column name. If not provided, it is assumed cell ids are represented by index"
    get_scores: "Should score column be added? Default: FALSE"
    classifier: "Path to the classifier object in .rds format (Optional; required to add dataset of origin to output table)"
    output_table: "Path to the final output file in text format"
  }
}