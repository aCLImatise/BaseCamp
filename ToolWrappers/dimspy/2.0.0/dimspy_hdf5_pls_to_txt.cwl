class: CommandLineTool
id: dimspy_hdf5_pls_to_txt.cwl
inputs:
- id: in_input
  doc: "HDF5 file that contains a list of peaklist objects\nfrom one of the processing\
    \ steps."
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: Directory to write to.
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_delimiter
  doc: "Values on each line of the file are separated by this\ncharacter.\n"
  type: string?
  inputBinding:
    prefix: --delimiter
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dimspy
- hdf5-pls-to-txt
