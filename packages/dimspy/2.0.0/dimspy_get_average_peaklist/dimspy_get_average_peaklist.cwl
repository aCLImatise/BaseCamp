class: CommandLineTool
id: dimspy_get_average_peaklist.cwl
inputs:
- id: in_input
  doc: "Single or Multiple HDF5 files that contain a peak\nmatrix object from one\
    \ of the processing steps."
  type: long
  inputBinding:
    prefix: --input
- id: in_output
  doc: HDF5 file to save the peaklist object to.
  type: File
  inputBinding:
    prefix: --output
- id: in_name_peak_list
  doc: "Name of the peaklist.\n"
  type: string
  inputBinding:
    prefix: --name-peaklist
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dimspy
- get-average-peaklist
