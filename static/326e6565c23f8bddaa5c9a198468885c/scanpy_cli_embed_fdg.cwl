class: CommandLineTool
id: scanpy_cli_embed_fdg.cwl
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
- id: random_state
  doc: 'Seed for random number generator.  [default: 0]'
  type: long
  inputBinding:
    prefix: --random-state
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
- id: in_it_pos
  doc: Use precomputed coordinates for initialization. Can be any key of `.obsm` or
    "paga" if .uns["paga"] is present
  type: string
  inputBinding:
    prefix: --init-pos
- id: layout
  doc: '[fa|fr|grid_fr|kk|lgl|drl|rt] Name of any valid igraph layout, including "fa"
    (ForceAtlas2), "fr" (Fruchterman Reingold), "grid_fr" (Grid Fruchterman Reingold,
    faster than "fr"), "kk" (Kamadi Kawai, slower than "fr"), "lgl" (Large Graph Layout,
    very fast), "drl" (Distributed Recursive Layout, pretty fast) and "rt" (Reingold
    Tilford tree layout).  [default: fa]'
  type: boolean
  inputBinding:
    prefix: --layout
- id: in_it_pos
  doc: How to initialize the low dimensional embedding. Can be "paga", or any valid
    key of `.obsm`.
  type: string
  inputBinding:
    prefix: --init-pos
outputs: []
cwlVersion: v1.1
baseCommand:
- scanpy-cli
- embed
- fdg
