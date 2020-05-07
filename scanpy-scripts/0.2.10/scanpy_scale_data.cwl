class: CommandLineTool
id: scanpy_scale_data.cwl
inputs:
- id: input_format
  doc: '[anndata|loom] Input object format.  [default: anndata]'
  type: boolean
  inputBinding:
    prefix: --input-format
- id: output_format
  doc: '[anndata|loom|zarr] Output object format.  [default: anndata]'
  type: boolean
  inputBinding:
    prefix: --output-format
- id: zarr_chunk_size
  doc: 'Chunk size for writing output in zarr format.  [default: 1000]'
  type: long
  inputBinding:
    prefix: --zarr-chunk-size
- id: export_mtx
  doc: When specified, using it as prefix for exporting mtx files. If not empty and
    not ending with "/" or "_", a "_" will be appended.
  type: File
  inputBinding:
    prefix: --export-mtx
- id: show_obj
  doc: '[stdout|stderr]      Print output object summary info to specified stream.'
  type: boolean
  inputBinding:
    prefix: --show-obj
- id: no_zero_center
  doc: When set, omit zero-centering variables to allow efficient handling of sparse
    input.
  type: boolean
  inputBinding:
    prefix: --no-zero-center
- id: max_value
  doc: When specified, clip to this value after scaling, otherwise do not clip
  type: double
  inputBinding:
    prefix: --max-value
outputs: []
cwlVersion: v1.1
baseCommand:
- scanpy-scale-data
