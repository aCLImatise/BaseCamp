class: CommandLineTool
id: dimspy_hdf5_pm_to_txt.cwl
inputs:
- id: in_input
  doc: "HDF5 file that contains a peak matrix object from one\nof the processing steps."
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "Directory (peaklists) or text file (peak matrix) to\nwrite to."
  type: File?
  inputBinding:
    prefix: --output
- id: in_attribute_name
  doc: Type of matrix to print.
  type: string?
  inputBinding:
    prefix: --attribute_name
- id: in_class_label_rsd
  doc: "Class label to select samples for RSD calculatons\n(e.g. QC)."
  type: string?
  inputBinding:
    prefix: --class-label-rsd
- id: in_delimiter
  doc: "Values on each line of the file are separated by this\ncharacter."
  type: string?
  inputBinding:
    prefix: --delimiter
- id: in_representation_samples
  doc: Should the rows or columns respresent the samples?
  type: string?
  inputBinding:
    prefix: --representation-samples
- id: in_comprehensive
  doc: Comprehensive version of the peak matrix
  type: boolean?
  inputBinding:
    prefix: --comprehensive
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dimspy
- hdf5-pm-to-txt
