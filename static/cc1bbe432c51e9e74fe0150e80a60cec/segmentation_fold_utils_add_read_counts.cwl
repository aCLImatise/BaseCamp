class: CommandLineTool
id: ../../../segmentation_fold_utils_add_read_counts.cwl
inputs:
- id: regex
  doc: "Regex to capture the targeted location in DBN file (default: '>.*?(chr[^:]):([0-9]+)-([0-9]+)'\
    \ )"
  type: string
  inputBinding:
    prefix: --regex
- id: dbn_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- segmentation-fold-utils
- add-read-counts
