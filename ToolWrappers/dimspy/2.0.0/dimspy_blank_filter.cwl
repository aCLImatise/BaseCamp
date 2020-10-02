class: CommandLineTool
id: dimspy_blank_filter.cwl
inputs:
- id: in_input
  doc: "HDF5 file or tab-delimited file that contains a peak\nmatrix (object)."
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: HDF5 file to save the peak matrix object to.
  type: File
  inputBinding:
    prefix: --output
- id: in_blank_label
  doc: Class label for blanks.
  type: string
  inputBinding:
    prefix: --blank-label
- id: in_min_fraction
  doc: Minium fold change blank versus sample.
  type: long
  inputBinding:
    prefix: --min-fraction
- id: in_function
  doc: Select function to calculate blank intenstiy.
  type: string
  inputBinding:
    prefix: --function
- id: in_min_fold_change
  doc: Minium fold change blank versus sample.
  type: long
  inputBinding:
    prefix: --min-fold-change
- id: in_remove_blank_samples
  doc: Remove blank samples from peak matrix.
  type: boolean
  inputBinding:
    prefix: --remove-blank-samples
- id: in_labels
  doc: "Tab delimited file with at least two columns named\n'filename' and 'classLabel'.\n"
  type: File
  inputBinding:
    prefix: --labels
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dimspy
- blank-filter
