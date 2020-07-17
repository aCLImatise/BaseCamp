version 1.0

task TransformMarkerFile.R {
  input {
    String? input_marker_file
    String? marker_list
    String? pval_col
    String? pval_threshold
    String? groups_col
    String? gene_names
    String? garnett_marker_file
  }
  command <<<
    transform_marker_file.R \
      ~{if defined(input_marker_file) then ("--input-marker-file " +  '"' + input_marker_file + '"') else ""} \
      ~{if defined(marker_list) then ("--marker-list " +  '"' + marker_list + '"') else ""} \
      ~{if defined(pval_col) then ("--pval-col " +  '"' + pval_col + '"') else ""} \
      ~{if defined(pval_threshold) then ("--pval-threshold " +  '"' + pval_threshold + '"') else ""} \
      ~{if defined(groups_col) then ("--groups-col " +  '"' + groups_col + '"') else ""} \
      ~{if defined(gene_names) then ("--gene-names " +  '"' + gene_names + '"') else ""} \
      ~{if defined(garnett_marker_file) then ("--garnett-marker-file " +  '"' + garnett_marker_file + '"') else ""}
  >>>
  parameter_meta {
    input_marker_file: "Path to the SCXA-style marker gene file in .txt format"
    marker_list: "Path to a serialised object containing marker genes"
    pval_col: "Column name of marker p-values"
    pval_threshold: "Cut-off p-value for marker genes"
    groups_col: "Column name of cell groups (i.e. cluster IDs or cell types) in marker file"
    gene_names: "Column containing gene names in marker file"
    garnett_marker_file: "Path to the garnett format marker gene file in .txt format"
  }
}