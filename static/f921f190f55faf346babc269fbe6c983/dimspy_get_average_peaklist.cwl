class: CommandLineTool
id: dimspy_get_average_peaklist.cwl
inputs:
- id: input
  doc: Single or Multiple HDF5 files that contain a peak matrix object from one of
    the processing steps.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: HDF5 file to save the peaklist object to.
  type: string
  inputBinding:
    prefix: --output
- id: name_peak_list
  doc: Name of the peaklist.
  type: string
  inputBinding:
    prefix: --name-peaklist
outputs: []
cwlVersion: v1.1
baseCommand:
- dimspy
- get-average-peaklist
