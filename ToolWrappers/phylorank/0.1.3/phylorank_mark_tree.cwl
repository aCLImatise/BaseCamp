class: CommandLineTool
id: phylorank_mark_tree.cwl
inputs:
- id: in_thresholds
  doc: "relative divergence thresholds for taxonomic ranks\n(default: {\"d\": 0.33,\
    \ \"p\": 0.56, \"c\": 0.65, \"o\": 0.78,\n\"f\": 0.92, \"g\": 0.99})"
  type: double
  inputBinding:
    prefix: --thresholds
- id: in_min_support
  doc: "only mark nodes above the specified support value\n(default=0) (default: 0)"
  type: long
  inputBinding:
    prefix: --min_support
- id: in_only_named_clades
  doc: only mark nodes with an existing label
  type: boolean
  inputBinding:
    prefix: --only_named_clades
- id: in_min_length
  doc: "only mark nodes with a parent branch above the\nspecified length (default=0)\
    \ (default: 0.0)"
  type: long
  inputBinding:
    prefix: --min_length
- id: in_no_percentile
  doc: do not mark with percentile information
  type: boolean
  inputBinding:
    prefix: --no_percentile
- id: in_no_relative_divergence
  doc: do not mark with relative divergence information
  type: boolean
  inputBinding:
    prefix: --no_relative_divergence
- id: in_no_prediction
  doc: do not mark with predicted rank information
  type: boolean
  inputBinding:
    prefix: --no_prediction
- id: in_input_tree
  doc: input tree to mark
  type: string
  inputBinding:
    position: 0
- id: in_output_tree
  doc: output tree with assigned taxonomic ranks
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phylorank
- mark_tree
