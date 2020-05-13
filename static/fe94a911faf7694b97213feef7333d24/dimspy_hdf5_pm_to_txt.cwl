class: CommandLineTool
id: dimspy_hdf5_pm_to_txt.cwl
inputs:
- id: input
  doc: HDF5 file that contains a peak matrix object from one of the processing steps.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Directory (peaklists) or text file (peak matrix) to write to.
  type: string
  inputBinding:
    prefix: --output
- id: attribute_name
  doc: Type of matrix to print.
  type: string
  inputBinding:
    prefix: --attribute_name
- id: class_label_rsd
  doc: Class label to select samples for RSD calculatons (e.g. QC).
  type: string
  inputBinding:
    prefix: --class-label-rsd
- id: delimiter
  doc: Values on each line of the file are separated by this character.
  type: string
  inputBinding:
    prefix: --delimiter
- id: representation_samples
  doc: Should the rows or columns respresent the samples?
  type: string
  inputBinding:
    prefix: --representation-samples
- id: comprehensive
  doc: Comprehensive version of the peak matrix
  type: boolean
  inputBinding:
    prefix: --comprehensive
outputs: []
cwlVersion: v1.1
baseCommand:
- dimspy
- hdf5-pm-to-txt
