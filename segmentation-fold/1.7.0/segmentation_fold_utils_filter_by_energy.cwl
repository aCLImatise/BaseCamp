class: CommandLineTool
id: segmentation_fold_utils_filter_by_energy.cwl
inputs:
- id: energy
  doc: Entries with transitions with energy smaller than energy (< e) or without transitions
    will be put into DBN_OUTPUT_FILE_LARGER_OR_EQUAL and those larger or equal (>=
    e) to DBN_OUTPUT_FILE_SMALLER
  type: double
  inputBinding:
    prefix: --energy
outputs: []
cwlVersion: v1.1
baseCommand:
- segmentation-fold-utils
- filter-by-energy
