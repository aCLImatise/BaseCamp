version 1.0

task DownsampleCellsR {
  input {
    Directory? expression_data
    File? metadata
    File? exclusions
    File? cell_id_field
    File? cell_type_field
    Int? array_size_limit
    Directory? output_dir
    Int? cell_count_threshold
    File? metadata_upd
  }
  command <<<
    downsample_cells_R \
      ~{if defined(expression_data) then ("--expression-data " +  '"' + expression_data + '"') else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(exclusions) then ("--exclusions " +  '"' + exclusions + '"') else ""} \
      ~{if defined(cell_id_field) then ("--cell-id-field " +  '"' + cell_id_field + '"') else ""} \
      ~{if defined(cell_type_field) then ("--cell-type-field " +  '"' + cell_type_field + '"') else ""} \
      ~{if defined(array_size_limit) then ("--array-size-limit " +  '"' + array_size_limit + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(cell_count_threshold) then ("--cell-count-threshold " +  '"' + cell_count_threshold + '"') else ""} \
      ~{if defined(metadata_upd) then ("--metadata-upd " +  '"' + metadata_upd + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cell-types-analysis:0.1.11--0"
  }
  parameter_meta {
    expression_data: "10xGenomics-type directory holding expression matrix, genes,\\nand barcodes"
    metadata: "Metadata file mapping cells to cell types"
    exclusions: "Path to the yaml file with excluded terms for"
    cell_id_field: "Name of cell id column in metada file"
    cell_type_field: "Name of cell type column in metada file"
    array_size_limit: "Maximum length of R array"
    output_dir: "Output directory for downsampled expression data"
    cell_count_threshold: "Threshold number of cells to keep a cell type in the matrix"
    metadata_upd: "Updated metadata file output path"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
    File out_metadata_upd = "${in_metadata_upd}"
  }
}