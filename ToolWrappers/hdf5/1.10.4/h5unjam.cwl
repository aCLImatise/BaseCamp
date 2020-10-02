class: CommandLineTool
id: h5unjam.cwl
inputs:
- id: in_specifies_hdf_input
  doc: "Specifies the HDF5 as input.  If the input HDF5 file\ncontains no user block,\
    \ exit with an error message."
  type: File
  inputBinding:
    prefix: -i
- id: in_specifies_hdf_file
  doc: "Specifies output HDF5 file without a user block.\nIf not specified, the user\
    \ block will be removed from the\ninput HDF5 file."
  type: long
  inputBinding:
    prefix: -o
- id: in_specifies_file_used
  doc: "Specifies the output file containing the data from the\nuser block.\nCannot\
    \ be used with --delete option."
  type: File
  inputBinding:
    prefix: -u
- id: in_delete
  doc: "Remove the user block from the input HDF5 file. The content\nof the user block\
    \ is discarded.\nCannot be used with the -u option."
  type: boolean
  inputBinding:
    prefix: --delete
- id: in_prints_library_version
  doc: Prints the HDF5 library version and exits.
  type: boolean
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specifies_file_used
  doc: "Specifies the output file containing the data from the\nuser block.\nCannot\
    \ be used with --delete option."
  type: File
  outputBinding:
    glob: $(inputs.in_specifies_file_used)
cwlVersion: v1.1
baseCommand:
- h5unjam
