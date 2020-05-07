class: CommandLineTool
id: scanpy_cli_embed_diffmap.cwl
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
- id: export_embedding
  doc: Export embeddings in a tab-separated text table.
  type: File
  inputBinding:
    prefix: --export-embedding
- id: n_comps
  doc: 'Number of components to compute  [default: 50]'
  type: long
  inputBinding:
    prefix: --n-comps
outputs: []
cwlVersion: v1.1
baseCommand:
- scanpy-cli
- embed
- diffmap
