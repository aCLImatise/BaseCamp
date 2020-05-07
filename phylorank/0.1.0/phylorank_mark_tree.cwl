class: CommandLineTool
id: phylorank_mark_tree.cwl
inputs:
- id: input_tree
  doc: input tree to mark
  type: string
  inputBinding:
    position: 0
- id: output_tree
  doc: output tree with assigned taxonomic ranks
  type: string
  inputBinding:
    position: 1
- id: thresholds
  doc: 'relative divergence thresholds for taxonomic ranks (default: {"d": 0.33, "p":
    0.56, "c": 0.65, "o": 0.78, "f": 0.92, "g": 0.99})'
  type: string
  inputBinding:
    prefix: --thresholds
- id: min_support
  doc: 'only mark nodes above the specified support value (default=0) (default: 0)'
  type: long
  inputBinding:
    prefix: --min_support
- id: only_named_clades
  doc: only mark nodes with an existing label
  type: boolean
  inputBinding:
    prefix: --only_named_clades
- id: min_length
  doc: 'only mark nodes with a parent branch above the specified length (default=0)
    (default: 0.0)'
  type: long
  inputBinding:
    prefix: --min_length
- id: no_percentile
  doc: do not mark with percentile information
  type: boolean
  inputBinding:
    prefix: --no_percentile
- id: no_relative_divergence
  doc: do not mark with relative divergence information
  type: boolean
  inputBinding:
    prefix: --no_relative_divergence
- id: no_prediction
  doc: do not mark with predicted rank information
  type: boolean
  inputBinding:
    prefix: --no_prediction
outputs: []
cwlVersion: v1.1
baseCommand:
- phylorank
- mark_tree
