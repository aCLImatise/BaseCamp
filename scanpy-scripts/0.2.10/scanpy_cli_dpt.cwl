class: CommandLineTool
id: scanpy_cli_dpt.cwl
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
- id: use_graph
  doc: 'Slot name under `.uns` that contains the KNN graph of which sparse adjacency
    matrix is used for clustering.  [default: neighbors]'
  type: string
  inputBinding:
    prefix: --use-graph
- id: key_added
  doc: '[,TEXT...]      Key under which to add the computed results'
  type: string
  inputBinding:
    prefix: --key-added
- id: root
  doc: '...           Specify a categorical annotaion of observations (`.obs`) and
    a value representing the root cells.  [default: None, None]'
  type: string
  inputBinding:
    prefix: --root
- id: n_dcs
  doc: 'The number of diffusion components to use. [default: 10]'
  type: long
  inputBinding:
    prefix: --n-dcs
- id: n_branchings
  doc: 'Number of branchings to detect.  [default: 0]'
  type: long
  inputBinding:
    prefix: --n-branchings
- id: min_group_size
  doc: 'During recursive splitting of branches for --n-branchings > 1, do not consider
    branches/groups that contain fewer than this fraction of the total number of data
    points. [default: 0.01]'
  type: double
  inputBinding:
    prefix: --min-group-size
outputs: []
cwlVersion: v1.1
baseCommand:
- scanpy-cli
- dpt
