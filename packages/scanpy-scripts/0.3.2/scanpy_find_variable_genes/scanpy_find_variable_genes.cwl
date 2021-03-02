class: CommandLineTool
id: scanpy_find_variable_genes.cwl
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
- id: in_mean_limits
  doc: "...\nCutoffs for the mean of expressionin the\nformat of \"-m min max\". \
    \ [default: 0.0125,\n3]"
  type: double?
  inputBinding:
    prefix: --mean-limits
- id: in_disp_limits
  doc: "...\nCutoffs for the dispersion of expressionin\nthe format of \"-d min max\"\
    .  [default: 0.5,\ninf]"
  type: double?
  inputBinding:
    prefix: --disp-limits
- id: in_span
  doc: "The fraction of the data (cells) used when\nestimating the variance in the\
    \ loess model\nfit if flavor='seurat_v3'.  [default: 0.3]"
  type: double?
  inputBinding:
    prefix: --span
- id: in_n_bins
  doc: Number of bins for binning the mean gene
  type: long?
  inputBinding:
    prefix: --n-bins
- id: in_n_top_genes
  doc: Number of highly-variable genes to keep.
  type: long?
  inputBinding:
    prefix: --n-top-genes
- id: in_flavor
  doc: "[seurat|cell_ranger|seurat_v3]\nChoose the flavor for computing normalized\n\
    dispersion.  [default: seurat]"
  type: boolean?
  inputBinding:
    prefix: --flavor
- id: in_subset
  doc: "When set, inplace subset to highly-variable\ngenes, otherwise only flag highly-variable\n\
    genes."
  type: boolean?
  inputBinding:
    prefix: --subset
- id: in_batch_key
  doc: "If specified, highly-variable genes are\nselected within each batch separately\
    \ and\nmerged. This simple process avoids the\nselection of batch-specific genes\
    \ and acts\nas a lightweight batch correction method.\nFor all flavors, genes\
    \ are first sorted by\nhow many batches they are a HVG. For\ndispersion-based\
    \ flavors ties are broken by\nnormalized dispersion. If flavor =\n'seurat_v3',\
    \ ties are broken by the median\n(across batches) rank based on within-batch\n\
    normalized variance."
  type: long?
  inputBinding:
    prefix: --batch-key
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
  dockerPull: quay.io/biocontainers/scanpy-scripts:0.3.2--py_0
cwlVersion: v1.1
baseCommand:
- scanpy-find-variable-genes
