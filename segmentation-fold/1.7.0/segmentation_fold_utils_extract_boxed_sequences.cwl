class: CommandLineTool
id: segmentation_fold_utils_extract_boxed_sequences.cwl
inputs:
- id: max_inner_dist
  doc: Maximal distance between the boxes (default=250bp)
  type: long
  inputBinding:
    prefix: --max-inner-dist
- id: bp_extension
  doc: 'Extend extracted sequences with this number of bases (default: 10bp)'
  type: long
  inputBinding:
    prefix: --bp-extension
outputs: []
cwlVersion: v1.1
baseCommand:
- segmentation-fold-utils
- extract-boxed-sequences
