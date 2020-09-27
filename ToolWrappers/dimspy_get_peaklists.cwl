class: CommandLineTool
id: dimspy_get_peaklists.cwl
inputs:
- id: in_input
  doc: "Single or Multiple HDF5 files that contain a peak\nmatrix object from one\
    \ of the processing steps."
  type: long
  inputBinding:
    prefix: --input
- id: in_output
  doc: "HDF5 file to save the peaklist objects to.\n"
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dimspy
- get-peaklists
