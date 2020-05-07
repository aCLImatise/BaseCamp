class: CommandLineTool
id: dimspy_sample_filter.cwl
inputs:
- id: input
  doc: HDF5 file or tab-delimited file that contains a peak matrix.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: HDF5 file to save the peak matrix object to.
  type: string
  inputBinding:
    prefix: --output
- id: min_fraction
  doc: Minimum percentage of samples a peak has to be present.
  type: long
  inputBinding:
    prefix: --min-fraction
- id: within
  doc: Apply sample filter within each sample class.
  type: boolean
  inputBinding:
    prefix: --within
- id: rsd_threshold
  doc: Peaks where the associated QC peaks are above this threshold will be removed.
  type: string
  inputBinding:
    prefix: --rsd-threshold
- id: qc_label
  doc: Class label for QCs
  type: string
  inputBinding:
    prefix: --qc-label
- id: labels
  doc: Tab delimited file with at least two columns named 'filename' and 'classLabel'.
  type: string
  inputBinding:
    prefix: --labels
outputs: []
cwlVersion: v1.1
baseCommand:
- dimspy
- sample-filter
