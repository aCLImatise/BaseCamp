class: CommandLineTool
id: seurat_normalise_data.R.cwl
inputs:
- id: in_input_object_file
  doc: File name in which a serialized R matrix object may be found.
  type: File?
  inputBinding:
    prefix: --input-object-file
- id: in_input_format
  doc: Either loom, seurat, anndata or singlecellexperiment for the input format to
    read.
  type: string?
  inputBinding:
    prefix: --input-format
- id: in_output_format
  doc: Either loom, seurat, anndata or singlecellexperiment for the output format.
  type: string?
  inputBinding:
    prefix: --output-format
- id: in_normalization_method
  doc: Method for normalization. Default is log-normalization (LogNormalize). Can
    be 'CLR' or 'RC' additionally.
  type: string?
  inputBinding:
    prefix: --normalization-method
- id: in_scale_factor
  doc: Sets the scale factor for cell-level normalization.
  type: string?
  inputBinding:
    prefix: --scale-factor
- id: in_output_object_file
  doc: File name in which to store serialized R object of type 'Seurat'.'
  type: File?
  inputBinding:
    prefix: --output-object-file
- id: in_margin
  doc: If performing CLR normalization, normalize across features (1) or cells (2).
  type: long?
  inputBinding:
    prefix: --margin
- id: in_block_size
  doc: How many cells should be run in each chunk, will try to split evenly across
    threads
  type: long?
  inputBinding:
    prefix: --block-size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_object_file
  doc: File name in which to store serialized R object of type 'Seurat'.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_object_file)
hints: []
cwlVersion: v1.1
baseCommand:
- seurat-normalise-data.R
