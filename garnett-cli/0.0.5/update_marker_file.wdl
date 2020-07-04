version 1.0

task UpdateMarkerFile.R {
  input {
    String? marker_list_obj
    String? marker_check_file
    String? summary_col
    String? cell_type_col
    String? gene_id_col
    String? updated_marker_file
  }
  command <<<
    update_marker_file.R \
      ~{if defined(marker_list_obj) then ("--marker-list-obj " +  '"' + marker_list_obj + '"') else ""} \
      ~{if defined(marker_check_file) then ("--marker-check-file " +  '"' + marker_check_file + '"') else ""} \
      ~{if defined(summary_col) then ("--summary-col " +  '"' + summary_col + '"') else ""} \
      ~{if defined(cell_type_col) then ("--cell-type-col " +  '"' + cell_type_col + '"') else ""} \
      ~{if defined(gene_id_col) then ("--gene-id-col " +  '"' + gene_id_col + '"') else ""} \
      ~{if defined(updated_marker_file) then ("--updated-marker-file " +  '"' + updated_marker_file + '"') else ""}
  >>>
  parameter_meta {
    marker_list_obj: "Path to the original marker gene list serialised object"
    marker_check_file: "Path to the file with marker gene assessment done by garnett"
    summary_col: "Marker gene assessment column name"
    cell_type_col: "Marker gene assessment column name"
    gene_id_col: "Gene id column name in marker assessment file"
    updated_marker_file: "Path to the updated marker file"
  }
}