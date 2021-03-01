class: CommandLineTool
id: scanpy_cli_hvg.cwl
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
  doc: "[seurat|cellranger]\nChoose the flavor for computing normalized\ndispersion.\
    \  [default: seurat]"
  type: boolean?
  inputBinding:
    prefix: --flavor
- id: in_subset
  doc: "When set, inplace subset to highly-variable\ngenes, otherwise only flag highly-variable\n\
    genes."
  type: boolean?
  inputBinding:
    prefix: --subset
- id: in_by_batch
  doc: "...\nFind highly variable genes within each batch\ndefined by <TEXT> then\
    \ pool and keep those\nfound in at least <INTEGER> batches.\n[default: None, None]"
  type: long?
  inputBinding:
    prefix: --by-batch
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
hints: []
cwlVersion: v1.1
baseCommand:
- scanpy-cli
- hvg
