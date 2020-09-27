class: CommandLineTool
id: scanpy_filter_cells.cwl
inputs:
- id: in_input_format
  doc: "[anndata|loom]\nInput object format.  [default: anndata]"
  type: boolean
  inputBinding:
    prefix: --input-format
- id: in_output_format
  doc: "[anndata|loom|zarr]\nOutput object format.  [default: anndata]"
  type: boolean
  inputBinding:
    prefix: --output-format
- id: in_zarr_chunk_size
  doc: Chunk size for writing output in zarr
  type: long
  inputBinding:
    prefix: --zarr-chunk-size
- id: in_export_mtx
  doc: "When specified, using it as prefix for\nexporting mtx files. If not empty\
    \ and not\nending with \"/\" or \"_\", a \"_\" will be\nappended."
  type: File
  inputBinding:
    prefix: --export-mtx
- id: in_show_obj
  doc: "[stdout|stderr]      Print output object summary info to\nspecified stream."
  type: boolean
  inputBinding:
    prefix: --show-obj
- id: in_gene_name
  doc: "Name of the variable that contains gene\nnames, used for flagging mitochondria\
    \ genes\nwhen column \"mito\" is absent from `.var`.\n[default: index]"
  type: string
  inputBinding:
    prefix: --gene-name
- id: in_list_attr
  doc: "When set, list attributes that can be\nfiltered on."
  type: boolean
  inputBinding:
    prefix: --list-attr
- id: in_param
  doc: "...\nNumerical parameters used to filter the\ndata, in the format of \"-p\
    \ name min max\".\nMultiple -p entries allowed."
  type: double
  inputBinding:
    prefix: --param
- id: in_category
  doc: "<TEXT TEXT[,TEXT...]>...\nCategorical attributes used to filter the\ndata,\
    \ in the format of \"-c <name> <values>\",\nwhere entries with attribute <name>\
    \ with\nvalue in <values> are kept. If <values> is\npreceded by \"!\", entries\
    \ with value in\n<values> are removed. Multiple -c entries\nallowed."
  type: boolean
  inputBinding:
    prefix: --category
- id: in_subset
  doc: "...\nSimilar to --category in the format of \"-s\n<name> <file>\", but the\
    \ <file> to be a one-\ncolumn table that provides the values.\nMultiple -s entries\
    \ allowed."
  type: File
  inputBinding:
    prefix: --subset
- id: in_force_recalc
  doc: "When set, re-calculate\n`pct_counts_<qc_variable>` and\n`pct_counts_in_top_<n>_genes`\
    \ even if they\nexist."
  type: boolean
  inputBinding:
    prefix: --force-recalc
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
cwlVersion: v1.1
baseCommand:
- scanpy-filter-cells
