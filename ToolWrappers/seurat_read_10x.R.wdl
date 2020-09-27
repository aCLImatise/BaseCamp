version 1.0

task Seuratread10xR {
  input {
    File? data_file
    File? data_dir
    File? output_object_file
    String? output_format
    File? metadata
    Int? min_cells
    Int? min_features
    Int? gene_column
    Boolean? not_unique_features
    String? project
    Int? names_field
    String? names_delim
  }
  command <<<
    seurat_read_10x_R \
      ~{if defined(data_file) then ("--data-file " +  '"' + data_file + '"') else ""} \
      ~{if defined(data_dir) then ("--data-dir " +  '"' + data_dir + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(min_cells) then ("--min-cells " +  '"' + min_cells + '"') else ""} \
      ~{if defined(min_features) then ("--min-features " +  '"' + min_features + '"') else ""} \
      ~{if defined(gene_column) then ("--gene-column " +  '"' + gene_column + '"') else ""} \
      ~{if (not_unique_features) then "--not-unique-features" else ""} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if defined(names_field) then ("--names-field " +  '"' + names_field + '"') else ""} \
      ~{if defined(names_delim) then ("--names-delim " +  '"' + names_delim + '"') else ""}
  >>>
  parameter_meta {
    data_file: "A tab-separated file containing expression data."
    data_dir: "Directory containing the matrix.mtx, genes.tsv, and barcodes.tsv files matching 10X conventions (overrides --data-file)."
    output_object_file: "File name in which to store serialized R matrix object."
    output_format: "Either loom, seurat, anndata or singlecellexperiment for the output format."
    metadata: "Path to a file with metdata for the cells, first column should be cell identifiers as used in the cells 10x file."
    min_cells: "Include features detected in at least this many cells. Will subset the counts matrix as well. To reintroduce excluded features, create a new object with a lower cutoff."
    min_features: "Include cells where at least this many features are detected."
    gene_column: "NAME COLUMN\\nSpecify which column of genes.tsv or features.tsv to use for gene names; default is 2."
    not_unique_features: "Do not make feature names unique (default FALSE - make them unique)."
    project: "THE PROJECT NAME FOR THE SEURAT OBJECT.\\nDo not make feature names unique (default FALSE - make them unique)."
    names_field: "FOR FIELD WITH CELLS NAME\\nFor the initial identity class for each cell, choose this field for the cell's name. E.g. If your cells are named as BARCODE_CLUSTER_CELLTYPE in the input matrix, set names.field to 3 to set the initial identities to CELLTYPE."
    names_delim: "FIELD WITHIN CELLS NAME\\nFor the initial identity class for each cell, choose this delimiter from the cell's column name. E.g. If your cells are named as BARCODE-CLUSTER-CELLTYPE, set this to '-' to separate the cell name into its component parts for picking the relevant field."
  }
  output {
    File out_stdout = stdout()
    File out_output_object_file = "${in_output_object_file}"
  }
}