class: CommandLineTool
id: scanpy_cli_hvg.cwl
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
- id: mean_limits
  doc: '... Cutoffs for the mean of expressionin the format of "-m min max".  [default:
    0.0125, 3]'
  type: double
  inputBinding:
    prefix: --mean-limits
- id: disp_limits
  doc: '... Cutoffs for the dispersion of expressionin the format of "-d min max".  [default:
    0.5, inf]'
  type: double
  inputBinding:
    prefix: --disp-limits
- id: n_bins
  doc: 'Number of bins for binning the mean gene expression.  [default: 20]'
  type: long
  inputBinding:
    prefix: --n-bins
- id: n_top_genes
  doc: Number of highly-variable genes to keep.
  type: long
  inputBinding:
    prefix: --n-top-genes
- id: flavor
  doc: '[seurat|cellranger] Choose the flavor for computing normalized dispersion.  [default:
    seurat]'
  type: boolean
  inputBinding:
    prefix: --flavor
- id: subset
  doc: When set, inplace subset to highly-variable genes, otherwise only flag highly-variable
    genes.
  type: boolean
  inputBinding:
    prefix: --subset
- id: by_batch
  doc: '... Find highly variable genes within each batch defined by <TEXT> then pool
    and keep those found in at least <INTEGER> batches. [default: None, None]'
  type: string
  inputBinding:
    prefix: --by-batch
outputs: []
cwlVersion: v1.1
baseCommand:
- scanpy-cli
- hvg
