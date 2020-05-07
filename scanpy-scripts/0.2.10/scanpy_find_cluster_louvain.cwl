class: CommandLineTool
id: scanpy_find_cluster_louvain.cwl
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
- id: export_cluster
  doc: Export embeddings in a tab-separated text table.
  type: File
  inputBinding:
    prefix: --export-cluster
- id: use_graph
  doc: 'Slot name under `.uns` that contains the KNN graph of which sparse adjacency
    matrix is used for clustering.  [default: neighbors]'
  type: string
  inputBinding:
    prefix: --use-graph
- id: directed
  doc: '/ --undirected       Interpret the adjacency matrix as directed graph.  [default:
    True]'
  type: boolean
  inputBinding:
    prefix: --directed
- id: use_weights
  doc: 'Use weights from KNN graph.  [default: False]'
  type: boolean
  inputBinding:
    prefix: --use-weights
- id: restrict_to
  doc: '<TEXT TEXT[,TEXT...]>... Restrict the clustering to the categories within
    the key for sample annotation, in the form of "obs_key list_of_categories". [default:
    None, None]'
  type: boolean
  inputBinding:
    prefix: --restrict-to
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
- id: flavor
  doc: '[vtraag|igraph]        Choose between two packages for computing the clustering.
    "vtraag" is much powerful, and the default.  [default: vtraag]'
  type: boolean
  inputBinding:
    prefix: --flavor
- id: resolution
  doc: '[,FLOAT...] For the default flavor "vtraag", you can provide a resolution.
    Higher resolution means finding more and smaller clusters. [default: 1]'
  type: double
  inputBinding:
    prefix: --resolution
outputs: []
cwlVersion: v1.1
baseCommand:
- scanpy-find-cluster
- louvain
