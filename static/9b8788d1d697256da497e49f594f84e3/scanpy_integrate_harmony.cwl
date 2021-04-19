class: CommandLineTool
id: scanpy_integrate_harmony.cwl
inputs:
- id: in_input_format
  doc: "[anndata|loom]\nInput object format.  [default: anndata]"
  type: boolean?
  inputBinding:
    prefix: --input-format
- id: in_output_format
  doc: "[anndata|loom|zarr]\nOutput object format.  [default: anndata]"
  type: boolean?
  inputBinding:
    prefix: --output-format
- id: in_zarr_chunk_size
  doc: Chunk size for writing output in zarr
  type: long?
  inputBinding:
    prefix: --zarr-chunk-size
- id: in_loom_write_obs_m_var_m
  doc: "Write obsm and varm to the Loom file?\n[default: False]"
  type: boolean?
  inputBinding:
    prefix: --loom-write-obsm-varm
- id: in_export_mtx
  doc: "When specified, using it as prefix for\nexporting mtx files. If not empty\
    \ and not\nending with \"/\" or \"_\", a \"_\" will be\nappended."
  type: File?
  inputBinding:
    prefix: --export-mtx
- id: in_show_obj
  doc: "[stdout|stderr]      Print output object summary info to\nspecified stream."
  type: boolean?
  inputBinding:
    prefix: --show-obj
- id: in_batch_key
  doc: "The name of the column in adata.obs that\ndifferentiates among experiments/batches.\n\
    [required]"
  type: string?
  inputBinding:
    prefix: --batch-key
- id: in_basis
  doc: "The name of the field in adata.obsm where\nthe PCA table is stored. Defaults\
    \ to\n'X_pca', which is the default for\nsc.tl.pca().  [default: X_pca]"
  type: string?
  inputBinding:
    prefix: --basis
- id: in_adjusted_basis
  doc: "The name of the field in adata.obsm where\nthe adjusted PCA table will be\
    \ stored after\nrunning this function.  [default:\nX_pca_harmony]"
  type: string?
  inputBinding:
    prefix: --adjusted-basis
- id: in_theta
  doc: "Diversity clustering penalty parameter.\ntheta=0 does not encourage any diversity.\n\
    Larger values of theta result in more\ndiverse clusters.  [default: 2]"
  type: double?
  inputBinding:
    prefix: --theta
- id: in_lambda
  doc: "Ridge regression penalty parameter. Lambda\nmust be strictly positive.  Smaller\
    \ values\nresult in more aggressive correction.\n[default: 1]"
  type: double?
  inputBinding:
    prefix: --lambda
- id: in_sigma
  doc: "Width of soft kmeans clusters. Sigma scales\nthe distance from a cell to cluster\n\
    centroids. Larger values of sigma result in\ncells assigned to more clusters.\
    \ Smaller\nvalues of sigma make soft kmeans cluster\napproach hard clustering.\
    \  [default: 0.1]"
  type: double?
  inputBinding:
    prefix: --sigma
- id: in_n_clust
  doc: "Number of clusters in model. nclust=1\nequivalent to simple linear regression."
  type: long?
  inputBinding:
    prefix: --n-clust
- id: in_tau
  doc: "Protection against overclustering small\ndatasets with large ones. tau is\
    \ the\nexpected number of cells per cluster.\n[default: 0]"
  type: long?
  inputBinding:
    prefix: --tau
- id: in_block_size
  doc: "What proportion of cells to update during\nclustering. Between 0 to 1, default\
    \ 0.05.\nLarger values may be faster but less\naccurate.  [default: 0.05]"
  type: double?
  inputBinding:
    prefix: --block-size
- id: in_max_iter_cluster
  doc: "Maximum number of rounds to run clustering\nat each round of Harmony.  [default:\
    \ 20]"
  type: long?
  inputBinding:
    prefix: --max-iter-cluster
- id: in_max_iter_harmony
  doc: "Maximum number of rounds to run Harmony. One\nround of Harmony involves one\
    \ clustering and\none correction step.  [default: 10]"
  type: long?
  inputBinding:
    prefix: --max-iter-harmony
- id: in_epsilon_cluster
  doc: "Convergence tolerance for clustering round\nof Harmony Set to -Inf to never\
    \ stop early.\n[default: 1e-05]"
  type: double?
  inputBinding:
    prefix: --epsilon-cluster
- id: in_epsilon_harmony
  doc: "Convergence tolerance for clustering round\nof Harmony Set to -Inf to never\
    \ stop early.\n[default: 1e-05]"
  type: double?
  inputBinding:
    prefix: --epsilon-harmony
- id: in_random_state
  doc: "Seed for random number generator.  [default:\n0]"
  type: long?
  inputBinding:
    prefix: --random-state
- id: in_input_obj
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_obj
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/scanpy-scripts:0.3.3--pyhdfd78af_2
cwlVersion: v1.1
baseCommand:
- scanpy-integrate
- harmony
