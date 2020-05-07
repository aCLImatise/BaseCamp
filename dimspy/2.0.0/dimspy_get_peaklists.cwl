class: CommandLineTool
id: dimspy_get_peaklists.cwl
inputs:
- id: input
  doc: Single or Multiple HDF5 files that contain a peak matrix object from one of
    the processing steps.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: HDF5 file to save the peaklist objects to.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- dimspy
- get-peaklists
