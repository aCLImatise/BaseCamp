class: CommandLineTool
id: scanpy_cli_neighbor.cwl
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
- id: n_pcs
  doc: Use this many PCs. Use `.X` if --n-pcs is 0 when --use-rep is None.
  type: long
  inputBinding:
    prefix: --n-pcs
- id: use_rep
  doc: "Use the indicated representation. If None, the representation is chosen automatically:\
    \ for `.n_vars` < 50, `.X` is used, otherwise `X_pca` is used. If `X_pca` is not\
    \ present, it's computed with default parameters."
  type: string
  inputBinding:
    prefix: --use-rep
- id: key_added
  doc: '[,TEXT...]      Key under which to add the computed results'
  type: string
  inputBinding:
    prefix: --key-added
- id: random_state
  doc: 'Seed for random number generator.  [default: 0]'
  type: long
  inputBinding:
    prefix: --random-state
- id: n_neighbors
  doc: '[,INTEGER...] The size of local neighborhood (in terms of number of neighboring
    data points) used for manifold approximation. Larger values result in more global
    views of the manifold, while smaller values result in more local data being preserved.
    In general values should be in the range 2 to 100.  If --knn is set, number of
    nearest neighbors to be searched, othwise a Gaussian kernel width is set to the
    distance of the --n-neighbors neighbor. [default: 15]'
  type: long
  inputBinding:
    prefix: --n-neighbors
- id: no_knn
  doc: 'When NOT set, use a hard threshold to restrict the number of neighbors to
    --n-neighbors. Otherwise, use a Gaussian kernel to assign low weights to neighbors
    more distant than the --n-neighbors nearest neighbor  [default: True]'
  type: boolean
  inputBinding:
    prefix: --no-knn
- id: method
  doc: '[umap|gauss]       Use umap or gauss with adaptive width for computing connectivities.  [default:
    umap]'
  type: boolean
  inputBinding:
    prefix: --method
outputs: []
cwlVersion: v1.1
baseCommand:
- scanpy-cli
- neighbor
