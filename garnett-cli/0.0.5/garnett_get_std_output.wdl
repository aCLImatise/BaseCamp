version 1.0

task GarnettGetStdOutput.R {
  input {
    String? input_object
    String? cell_id_field
    String? predicted_cell_type_field
    String? classifier
    String? output_file_path
  }
  command <<<
    garnett_get_std_output.R \
      ~{if defined(input_object) then ("--input-object " +  '"' + input_object + '"') else ""} \
      ~{if defined(cell_id_field) then ("--cell-id-field " +  '"' + cell_id_field + '"') else ""} \
      ~{if defined(predicted_cell_type_field) then ("--predicted-cell-type-field " +  '"' + predicted_cell_type_field + '"') else ""} \
      ~{if defined(classifier) then ("--classifier " +  '"' + classifier + '"') else ""} \
      ~{if defined(output_file_path) then ("--output-file-path " +  '"' + output_file_path + '"') else ""}
  >>>
  parameter_meta {
    input_object: "Path to the input CDS object in .rds format"
    cell_id_field: "Column name of the cell id annotations. If not supplied, it is assumed that cell ids are represented by index"
    predicted_cell_type_field: "Column name of the predicted cell type annotation"
    classifier: "Path to the classifier object in .rds format (Optional; required to add dataset of origin to output table)"
    output_file_path: "Path to the produced output file in .tsv format"
  }
}