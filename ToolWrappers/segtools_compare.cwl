class: CommandLineTool
id: segtools_compare.cwl
inputs:
- id: in_edit_distance
  doc: "Measure the base-wise edit distance between the two\nspecified segmentations"
  type: boolean
  inputBinding:
    prefix: --edit-distance
- id: in_quick
  doc: Compute values only for one chromosome.
  type: boolean
  inputBinding:
    prefix: --quick
- id: in_quiet
  doc: Do not print diagnostic messages.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_segmentation
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
- segtools-compare
