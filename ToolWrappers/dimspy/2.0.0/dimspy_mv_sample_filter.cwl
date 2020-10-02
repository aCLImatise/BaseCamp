class: CommandLineTool
id: dimspy_mv_sample_filter.cwl
inputs:
- id: in_input
  doc: HDF5 file file that contains a peak matrix object.
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: HDF5 file to save the peak matrix object to.
  type: File
  inputBinding:
    prefix: --output
- id: in_max_fraction
  doc: "Maximum percentage of missing values allowed across a\nsample.\n"
  type: long
  inputBinding:
    prefix: --max-fraction
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dimspy
- mv-sample-filter
