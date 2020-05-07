class: CommandLineTool
id: scanpy_cli_norm.cwl
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
- id: save_raw
  doc: '[yes|no|counts]  Save raw data existing raw data.  [default: yes]'
  type: boolean
  inputBinding:
    prefix: --save-raw
- id: no_log_transform
  doc: 'When set, do not apply (natural) log transform following normalisation. [default:
    True]'
  type: boolean
  inputBinding:
    prefix: --no-log-transform
- id: normalize_to
  doc: 'Normalize per cell nUMI to this number. [default: 10000]'
  type: double
  inputBinding:
    prefix: --normalize-to
- id: fraction
  doc: 'Only use genes that make up less than this fraction of the total count in
    every cell. So only these genes will sum up to the number specified by --normalize-to.
    [default: 0.9]'
  type: double
  inputBinding:
    prefix: --fraction
outputs: []
cwlVersion: v1.1
baseCommand:
- scanpy-cli
- norm
