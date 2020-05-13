class: CommandLineTool
id: scanpy_filter_genes.cwl
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
- id: gene_name
  doc: 'Name of the variable that contains gene names, used for flagging mitochondria
    genes when column "mito" is absent from `.var`. [default: index]'
  type: string
  inputBinding:
    prefix: --gene-name
- id: list_attr
  doc: When set, list attributes that can be filtered on.
  type: boolean
  inputBinding:
    prefix: --list-attr
- id: param
  doc: '... Numerical parameters used to filter the data, in the format of "-p name
    min max". Multiple -p entries allowed.'
  type: string
  inputBinding:
    prefix: --param
- id: category
  doc: <TEXT TEXT[,TEXT...]>... Categorical attributes used to filter the data, in
    the format of "-c <name> <values>", where entries with attribute <name> with value
    in <values> are kept. If <values> is preceded by "!", entries with value in <values>
    are removed. Multiple -c entries allowed.
  type: boolean
  inputBinding:
    prefix: --category
- id: subset
  doc: '... Similar to --category in the format of "-s <name> <file>", but the <file>
    to be a one- column table that provides the values. Multiple -s entries allowed.'
  type: string
  inputBinding:
    prefix: --subset
- id: force_recalc
  doc: When set, re-calculate `pct_counts_<qc_variable>` and `pct_counts_in_top_<n>_genes`
    even if they exist.
  type: boolean
  inputBinding:
    prefix: --force-recalc
outputs: []
cwlVersion: v1.1
baseCommand:
- scanpy-filter-genes
