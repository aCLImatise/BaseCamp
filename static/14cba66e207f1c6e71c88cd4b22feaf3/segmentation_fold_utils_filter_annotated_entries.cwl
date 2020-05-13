class: CommandLineTool
id: segmentation_fold_utils_filter_annotated_entries.cwl
inputs:
- id: regex
  doc: "Regex to capture the targeted location in DBN file (default: '>.*?(chr[^:]):([0-9]+)-([0-9]+)'\
    \ )"
  type: string
  inputBinding:
    prefix: --regex
outputs: []
cwlVersion: v1.1
baseCommand:
- segmentation-fold-utils
- filter-annotated-entries
