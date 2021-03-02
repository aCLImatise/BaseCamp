class: CommandLineTool
id: scanpy_run_pca.cwl
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
- id: in_no_zero_center
  doc: "When set, omit zero-centering variables to\nallow efficient handling of sparse\
    \ input."
  type: boolean?
  inputBinding:
    prefix: --no-zero-center
- id: in_random_state
  doc: "Seed for random number generator.  [default:\n0]"
  type: long?
  inputBinding:
    prefix: --random-state
- id: in_export_embedding
  doc: Export embeddings in a tab-separated text
  type: File?
  inputBinding:
    prefix: --export-embedding
- id: in_svd_solver
  doc: "[auto|arpack|randomized]\nSVD solver to use.  [default: auto]"
  type: boolean?
  inputBinding:
    prefix: --svd-solver
- id: in_use_all
  doc: "When set, use all genes for PCA, otherwise\nuse highly-variable genes by default."
  type: boolean?
  inputBinding:
    prefix: --use-all
- id: in_chunked
  doc: "When set, perform an incremental PCA on\nsegments of --chunk-size, which\n\
    automatically zero centers and ignore\nsettings of --random-state and --svd-solver."
  type: boolean?
  inputBinding:
    prefix: --chunked
- id: in_chunk_size
  doc: "Number of observations to include in each\nchunk, required by --chunked."
  type: long?
  inputBinding:
    prefix: --chunk-size
- id: in_table_dot
  doc: --n-comps INTEGER               Number of components to compute
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/scanpy-scripts:0.3.2--py_0
cwlVersion: v1.1
baseCommand:
- scanpy-run-pca
