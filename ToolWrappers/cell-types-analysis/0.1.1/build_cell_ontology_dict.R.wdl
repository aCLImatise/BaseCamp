version 1.0

task BuildCellOntologyDictR {
  input {
    File? input_dir
    Boolean? condensed_sd_rf
    String? barcode_col_name
    String? cell_label_col_name
    String? cell_ontology_col_name
    File? output_dict_path
    File? output_text_path
  }
  command <<<
    build_cell_ontology_dict_R \
      ~{if defined(input_dir) then ("--input-dir " +  '"' + input_dir + '"') else ""} \
      ~{if (condensed_sd_rf) then "--condensed-sdrf" else ""} \
      ~{if defined(barcode_col_name) then ("--barcode-col-name " +  '"' + barcode_col_name + '"') else ""} \
      ~{if defined(cell_label_col_name) then ("--cell-label-col-name " +  '"' + cell_label_col_name + '"') else ""} \
      ~{if defined(cell_ontology_col_name) then ("--cell-ontology-col-name " +  '"' + cell_ontology_col_name + '"') else ""} \
      ~{if defined(output_dict_path) then ("--output-dict-path " +  '"' + output_dict_path + '"') else ""} \
      ~{if defined(output_text_path) then ("--output-text-path " +  '"' + output_text_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_dir: "Path to the directory with condensed SDRF files"
    condensed_sd_rf: "Boolean: is the provided SDRF file in a condensed form? Default: TRUE"
    barcode_col_name: "Name of the barcode column in SDRF files (must be identical across all files)"
    cell_label_col_name: "Name of the cell label column in SDRF files (must be identical across all files)"
    cell_ontology_col_name: "Name of the cell ontology terms column in SDRF files (must be identical across all files)"
    output_dict_path: "Output path for serialised object containing the dictionary"
    output_text_path: "Output path for txt version of label - term mapping"
  }
  output {
    File out_stdout = stdout()
    File out_output_dict_path = "${in_output_dict_path}"
    File out_output_text_path = "${in_output_text_path}"
  }
}