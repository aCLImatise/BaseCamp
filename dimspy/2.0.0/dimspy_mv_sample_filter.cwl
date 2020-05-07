class: CommandLineTool
id: dimspy_mv_sample_filter.cwl
inputs:
- id: input
  doc: HDF5 file file that contains a peak matrix object.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: HDF5 file to save the peak matrix object to.
  type: string
  inputBinding:
    prefix: --output
- id: max_fraction
  doc: Maximum percentage of missing values allowed across a sample.
  type: long
  inputBinding:
    prefix: --max-fraction
outputs: []
cwlVersion: v1.1
baseCommand:
- dimspy
- mv-sample-filter
