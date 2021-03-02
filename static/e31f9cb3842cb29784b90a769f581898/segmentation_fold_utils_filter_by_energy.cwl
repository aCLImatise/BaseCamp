class: CommandLineTool
id: segmentation_fold_utils_filter_by_energy.cwl
inputs:
- id: in_energy
  doc: "Entries with transitions with energy smaller than energy\n(< e) or without\
    \ transitions will be put into\nDBN_OUTPUT_FILE_LARGER_OR_EQUAL and those larger\
    \ or\nequal (>= e) to DBN_OUTPUT_FILE_SMALLER"
  type: double?
  inputBinding:
    prefix: --energy
- id: in_utput_file_larger_or_equal
  doc: DBN_OUTPUT_FILE_SMALLER
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- segmentation-fold-utils
- filter-by-energy
