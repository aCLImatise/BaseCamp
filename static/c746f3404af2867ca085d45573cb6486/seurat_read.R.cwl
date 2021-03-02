class: CommandLineTool
id: seurat_read.R.cwl
inputs:
- id: in_data_file
  doc: A tab-separated file containing expression data.
  type: File?
  inputBinding:
    prefix: --data-file
- id: in_data_dir
  doc: Directory containing the matrix.mtx, genes.tsv, and barcodes.tsv files matching
    10X conventions (overrides --data-file).
  type: File?
  inputBinding:
    prefix: --data-dir
- id: in_output_object_file
  doc: File name in which to store serialized R matrix object.
  type: File?
  inputBinding:
    prefix: --output-object-file
- id: in_output_format
  doc: Either loom, seurat, anndata or singlecellexperiment for the output format.
  type: string?
  inputBinding:
    prefix: --output-format
- id: in_metadata
  doc: Path to a file with metdata for the cells, first column should be cell identifiers
    as used in the cells 10x file.
  type: File?
  inputBinding:
    prefix: --metadata
- id: in_min_cells
  doc: Include features detected in at least this many cells. Will subset the counts
    matrix as well. To reintroduce excluded features, create a new object with a lower
    cutoff.
  type: long?
  inputBinding:
    prefix: --min-cells
- id: in_min_features
  doc: Include cells where at least this many features are detected.
  type: long?
  inputBinding:
    prefix: --min-features
- id: in_gene_column
  doc: "NAME COLUMN\nSpecify which column of genes.tsv or features.tsv to use for\
    \ gene names; default is 2."
  type: long?
  inputBinding:
    prefix: --gene-column
- id: in_not_unique_features
  doc: Do not make feature names unique (default FALSE - make them unique).
  type: boolean?
  inputBinding:
    prefix: --not-unique-features
- id: in_project
  doc: "THE PROJECT NAME FOR THE SEURAT OBJECT.\nDo not make feature names unique\
    \ (default FALSE - make them unique)."
  type: string?
  inputBinding:
    prefix: --project
- id: in_names_field
  doc: "FOR FIELD WITH CELLS NAME\nFor the initial identity class for each cell, choose\
    \ this field for the cell's name. E.g. If your cells are named as BARCODE_CLUSTER_CELLTYPE\
    \ in the input matrix, set names.field to 3 to set the initial identities to CELLTYPE."
  type: long?
  inputBinding:
    prefix: --names-field
- id: in_names_delim
  doc: "FIELD WITHIN CELLS NAME\nFor the initial identity class for each cell, choose\
    \ this delimiter from the cell's column name. E.g. If your cells are named as\
    \ BARCODE-CLUSTER-CELLTYPE, set this to '-' to separate the cell name into its\
    \ component parts for picking the relevant field."
  type: string?
  inputBinding:
    prefix: --names-delim
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_object_file
  doc: File name in which to store serialized R matrix object.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_object_file)
hints: []
cwlVersion: v1.1
baseCommand:
- seurat-read.R
