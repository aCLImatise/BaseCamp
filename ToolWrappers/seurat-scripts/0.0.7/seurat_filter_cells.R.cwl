class: CommandLineTool
id: seurat_filter_cells.R.cwl
inputs:
- id: in_input_object_file
  doc: File name in which a serialized R matrix object may be found.
  type: File
  inputBinding:
    prefix: --input-object-file
- id: in_input_format
  doc: Either loom, seurat, anndata or singlecellexperiment for the input format to
    read.
  type: string
  inputBinding:
    prefix: --input-format
- id: in_output_format
  doc: Either loom, seurat, anndata or singlecellexperiment for the output format.
  type: string
  inputBinding:
    prefix: --output-format
- id: in_subset_names
  doc: Parameters to subset on. Eg, the name of a gene, PC1, a column name in object@meta.data,
    etc. Any argument that can be retreived using FetchData.
  type: long
  inputBinding:
    prefix: --subset-names
- id: in_low_thresholds
  doc: Low cutoffs for the parameters (default is -Inf).
  type: string
  inputBinding:
    prefix: --low-thresholds
- id: in_high_thresholds
  doc: High cutoffs for the parameters (default is Inf).
  type: string
  inputBinding:
    prefix: --high-thresholds
- id: in_cells_use
  doc: Comma-separated list of cell names to use as a subset. Alternatively, text
    file with one cell per line.
  type: File
  inputBinding:
    prefix: --cells-use
- id: in_output_object_file
  doc: File name in which to store serialized R object of type 'Seurat'.'
  type: File
  inputBinding:
    prefix: --output-object-file
- id: in_idents
  doc: "CLASSES TO KEEP\nComma-separated list of identity classes to keep"
  type: string
  inputBinding:
    prefix: --idents
- id: in_features
  doc: "TO KEEP\nComma-separated list or file path with features (normally genes)\
    \ to keep"
  type: File
  inputBinding:
    prefix: --features
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_object_file
  doc: File name in which to store serialized R object of type 'Seurat'.'
  type: File
  outputBinding:
    glob: $(inputs.in_output_object_file)
cwlVersion: v1.1
baseCommand:
- seurat-filter-cells.R
