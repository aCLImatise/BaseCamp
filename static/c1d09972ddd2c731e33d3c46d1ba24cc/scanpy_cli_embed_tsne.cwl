class: CommandLineTool
id: scanpy_cli_embed_tsne.cwl
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
- id: n_jobs
  doc: Number of jobs for parallel computation.
  type: long
  inputBinding:
    prefix: --n-jobs
- id: export_embedding
  doc: Export embeddings in a tab-separated text table.
  type: File
  inputBinding:
    prefix: --export-embedding
- id: perplexity
  doc: 'The perplexity is related to the number of nearest neighbors that is used
    in other manifold learning algorithms. Larger datasets usually require a larger
    perplexity. Consider selecting a value between 5 and 50. The choice is not extremely
    critical since t-SNE is quite insensitive to this parameter.  [default: 30]'
  type: double
  inputBinding:
    prefix: --perplexity
- id: early_exaggeration
  doc: 'Controls how tight natural clusters in the original space are in the embedded
    space and how much space will be between them. For larger values, the space between
    natural clusters will be larger in the embedded space. Again, the choice of this
    parameter is not very critical. If the cost function increases during initial
    optimization, the early exaggeration factor or the learning rate might be too
    high.  [default: 12]'
  type: double
  inputBinding:
    prefix: --early-exaggeration
- id: learning_rate
  doc: 'Note that the R-package "Rtsne" uses a default of 200. The learning rate can
    be a critical parameter. It should be between 100 and 1000. If the cost function
    increases during initial optimization, the early exaggeration factor or the learning
    rate might be too high. If the cost function gets stuck in a bad local minimum
    increasing the learning rate helps sometimes.  [default: 1000]'
  type: double
  inputBinding:
    prefix: --learning-rate
- id: no_fast_tsn_e
  doc: 'When NOT set, use the MulticoreTSNE package by D. Ulyanov if installed.  [default:
    True]'
  type: boolean
  inputBinding:
    prefix: --no-fast-tsne
outputs: []
cwlVersion: v1.1
baseCommand:
- scanpy-cli
- embed
- tsne
