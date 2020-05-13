class: CommandLineTool
id: scanpy_run_pca.cwl
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
- id: random_state
  doc: 'Seed for random number generator.  [default: 0]'
  type: long
  inputBinding:
    prefix: --random-state
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
- id: svd_solver
  doc: '[auto|arpack|randomized] SVD solver to use.  [default: auto]'
  type: boolean
  inputBinding:
    prefix: --svd-solver
- id: use_all
  doc: When set, use all genes for PCA, otherwise use highly-variable genes by default.
  type: boolean
  inputBinding:
    prefix: --use-all
- id: chunked
  doc: When set, perform an incremental PCA on segments of --chunk-size, which automatically
    zero centers and ignore settings of --random-state and --svd-solver.
  type: boolean
  inputBinding:
    prefix: --chunked
- id: chunk_size
  doc: Number of observations to include in each chunk, required by --chunked.
  type: long
  inputBinding:
    prefix: --chunk-size
outputs: []
cwlVersion: v1.1
baseCommand:
- scanpy-run-pca
