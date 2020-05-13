class: CommandLineTool
id: dimspy_blank_filter.cwl
inputs:
- id: input
  doc: HDF5 file or tab-delimited file that contains a peak matrix (object).
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: HDF5 file to save the peak matrix object to.
  type: string
  inputBinding:
    prefix: --output
- id: blank_label
  doc: Class label for blanks.
  type: string
  inputBinding:
    prefix: --blank-label
- id: min_fraction
  doc: Minium fold change blank versus sample.
  type: long
  inputBinding:
    prefix: --min-fraction
- id: function
  doc: Select function to calculate blank intenstiy.
  type: string
  inputBinding:
    prefix: --function
- id: min_fold_change
  doc: Minium fold change blank versus sample.
  type: long
  inputBinding:
    prefix: --min-fold-change
- id: remove_blank_samples
  doc: Remove blank samples from peak matrix.
  type: boolean
  inputBinding:
    prefix: --remove-blank-samples
- id: labels
  doc: Tab delimited file with at least two columns named 'filename' and 'classLabel'.
  type: string
  inputBinding:
    prefix: --labels
outputs: []
cwlVersion: v1.1
baseCommand:
- dimspy
- blank-filter
