class: CommandLineTool
id: h5jam.cwl
inputs:
- id: in_specifies_input_file
  doc: Specifies the input HDF5 file.
  type: File
  inputBinding:
    prefix: -i
- id: in_specifies_file_inserted
  doc: "Specifies the file to be inserted into the user block.\nCan be any file format\
    \ except an HDF5 format."
  type: File
  inputBinding:
    prefix: -u
- id: in_specifies_output_hdf
  doc: "Specifies the output HDF5 file.\nIf not specified, the user block will be\
    \ concatenated in\nplace to the input HDF5 file."
  type: long
  inputBinding:
    prefix: -o
- id: in_clobber
  doc: "Wipes out any existing user block before concatenating\nthe given user block.\n\
    The size of the new user block will be the larger of;\n- the size of existing\
    \ user block in the input HDF5 file\n- the size of user block required by new\
    \ input user file\n(size = 512 x 2N,  N is positive integer.)"
  type: boolean
  inputBinding:
    prefix: --clobber
- id: in_prints_library_version
  doc: Prints the HDF5 library version and exits.
  type: boolean
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- h5jam
