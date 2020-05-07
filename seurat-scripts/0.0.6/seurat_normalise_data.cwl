class: CommandLineTool
id: seurat_normalise_data.R.cwl
inputs:
- id: input_object_file
  doc: File name in which a serialized R matrix object may be found.
  type: string
  inputBinding:
    prefix: --input-object-file
- id: input_format
  doc: Either loom, seurat, anndata or singlecellexperiment for the input format to
    read.
  type: string
  inputBinding:
    prefix: --input-format
- id: output_format
  doc: Either loom, seurat, anndata or singlecellexperiment for the output format.
  type: string
  inputBinding:
    prefix: --output-format
- id: normalization_method
  doc: Method for normalization. Default is log-normalization (LogNormalize). Can
    be 'CLR' or 'RC' additionally.
  type: string
  inputBinding:
    prefix: --normalization-method
- id: scale_factor
  doc: Sets the scale factor for cell-level normalization.
  type: string
  inputBinding:
    prefix: --scale-factor
- id: output_object_file
  doc: File name in which to store serialized R object of type 'Seurat'.'
  type: string
  inputBinding:
    prefix: --output-object-file
- id: margin
  doc: If performing CLR normalization, normalize across features (1) or cells (2).
  type: string
  inputBinding:
    prefix: --margin
- id: block_size
  doc: How many cells should be run in each chunk, will try to split evenly across
    threads
  type: string
  inputBinding:
    prefix: --block-size
outputs: []
cwlVersion: v1.1
baseCommand:
- seurat-normalise-data.R
