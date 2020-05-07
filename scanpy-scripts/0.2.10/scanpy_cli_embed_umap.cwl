class: CommandLineTool
id: scanpy_cli_embed_umap.cwl
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
  doc: 'How to initialize the low dimensional embedding. Can be "spectral", "paga"
    or "random", or any key of `.obsm`.  [default: spectral]'
  type: string
  inputBinding:
    prefix: --init-pos
- id: min_dist
  doc: 'The effective minimum distance between embedded points. Smaller values will
    result in a more clustered embedding, while larger values will results in a more
    even dispersal of points.  [default: 0.5]'
  type: double
  inputBinding:
    prefix: --min-dist
- id: spread
  doc: 'The effective scale of embedded points, which determines the scale at which
    embedded points will be spread out.  [default: 1.0]'
  type: double
  inputBinding:
    prefix: --spread
- id: n_components
  doc: 'The number of dimensions of the embedding. [default: 2]'
  type: long
  inputBinding:
    prefix: --n-components
- id: maxiter
  doc: The number of iterations of the optimization.
  type: long
  inputBinding:
    prefix: --maxiter
- id: alpha
  doc: 'The initial learning rate for the embedding optimization.  [default: 1.0]'
  type: double
  inputBinding:
    prefix: --alpha
- id: gamma
  doc: 'Weighting applied to negative samples in low dimensional embedding optimization.
    [default: 1.0]'
  type: double
  inputBinding:
    prefix: --gamma
- id: negative_sample_rate
  doc: 'The number of negative edge samples to use per positive edge sample in optimizing
    the low dimensional embedding.  [default: 5]'
  type: long
  inputBinding:
    prefix: --negative-sample-rate
outputs: []
cwlVersion: v1.1
baseCommand:
- scanpy-cli
- embed
- umap
