class: CommandLineTool
id: dimspy_create_sample_list.cwl
inputs:
- id: in_input
  doc: "HDF5 file that contains a peak matrix object from one\nof the processing steps."
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: Text file to write to.
  type: File
  inputBinding:
    prefix: --output
- id: in_delimiter
  doc: "Values on each line of the file are separated by this\ncharacter.\n"
  type: string
  inputBinding:
    prefix: --delimiter
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dimspy
- create-sample-list
