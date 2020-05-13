class: CommandLineTool
id: scanpy_cli_regress.cwl
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
- id: n_jobs
  doc: Number of jobs for parallel computation.
  type: long
  inputBinding:
    prefix: --n-jobs
- id: keys
  doc: '[,TEXT...]       Key(s) for observation annotation on which to regress.'
  type: string
  inputBinding:
    prefix: --keys
outputs: []
cwlVersion: v1.1
baseCommand:
- scanpy-cli
- regress
