class: CommandLineTool
id: segmentation_fold_utils_filter_annotated_entries.cwl
inputs:
- id: in_regex
  doc: "Regex to capture the targeted location in DBN file\n(default: '>.*?(chr[^:]):([0-9]+)-([0-9]+)'\
    \ )"
  type: File
  inputBinding:
    prefix: --regex
- id: in_dbn_input_file
  doc: BED_INPUT_FILE DBN_OUT
  type: string
  inputBinding:
    position: 0
- id: in_bn_output_file_non_ove
  doc: RLAPPING
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
- filter-annotated-entries
