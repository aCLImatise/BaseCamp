class: CommandLineTool
id: segmentation_fold_utils_extract_boxed_sequences.cwl
inputs:
- id: in_max_inner_dist
  doc: "Maximal distance between the boxes\n(default=250bp)"
  type: long?
  inputBinding:
    prefix: --max-inner-dist
- id: in_bp_extension
  doc: "Extend extracted sequences with this number of\nbases (default: 10bp)"
  type: long?
  inputBinding:
    prefix: --bp-extension
- id: in_fast_a_input_file
  doc: BED_INPUT_FILE
  type: string
  inputBinding:
    position: 0
- id: in_fast_a_output_file
  doc: 'Options:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- segmentation-fold-utils
- extract-boxed-sequences
