class: CommandLineTool
id: dimspy_sample_filter.cwl
inputs:
- id: in_input
  doc: "HDF5 file or tab-delimited file that contains a peak\nmatrix."
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: HDF5 file to save the peak matrix object to.
  type: File
  inputBinding:
    prefix: --output
- id: in_min_fraction
  doc: "Minimum percentage of samples a peak has to be\npresent."
  type: long
  inputBinding:
    prefix: --min-fraction
- id: in_within
  doc: Apply sample filter within each sample class.
  type: boolean
  inputBinding:
    prefix: --within
- id: in_rsd_threshold
  doc: "Peaks where the associated QC peaks are above this\nthreshold will be removed."
  type: string
  inputBinding:
    prefix: --rsd-threshold
- id: in_qc_label
  doc: Class label for QCs
  type: string
  inputBinding:
    prefix: --qc-label
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
- sample-filter
