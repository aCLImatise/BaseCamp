class: CommandLineTool
id: segmentation_fold_utils_add_read_counts.cwl
inputs:
- id: in_regex
  doc: "Regex to capture the targeted location in DBN file\n(default: '>.*?(chr[^:]):([0-9]+)-([0-9]+)'\
    \ )"
  type: File
  inputBinding:
    prefix: --regex
- id: in_dbn_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- segmentation-fold-utils
- add-read-counts
