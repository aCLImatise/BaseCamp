class: CommandLineTool
id: downsample_cells.R.cwl
inputs:
- id: in_expression_data
  doc: "10xGenomics-type directory holding expression matrix, genes,\nand barcodes"
  type: Directory?
  inputBinding:
    prefix: --expression-data
- id: in_metadata
  doc: Metadata file mapping cells to cell types
  type: File?
  inputBinding:
    prefix: --metadata
- id: in_exclusions
  doc: Path to the yaml file with excluded terms for
  type: File?
  inputBinding:
    prefix: --exclusions
- id: in_cell_id_field
  doc: Name of cell id column in metada file
  type: File?
  inputBinding:
    prefix: --cell-id-field
- id: in_cell_type_field
  doc: Name of cell type column in metada file
  type: File?
  inputBinding:
    prefix: --cell-type-field
- id: in_array_size_limit
  doc: Maximum length of R array
  type: long?
  inputBinding:
    prefix: --array-size-limit
- id: in_output_dir
  doc: Output directory for downsampled expression data
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_cell_count_threshold
  doc: Threshold number of cells to keep a cell type in the matrix
  type: long?
  inputBinding:
    prefix: --cell-count-threshold
- id: in_metadata_upd
  doc: Updated metadata file output path
  type: File?
  inputBinding:
    prefix: --metadata-upd
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Output directory for downsampled expression data
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_metadata_upd
  doc: Updated metadata file output path
  type: File?
  outputBinding:
    glob: $(inputs.in_metadata_upd)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cell-types-analysis:0.1.11--0
cwlVersion: v1.1
baseCommand:
- downsample_cells.R
