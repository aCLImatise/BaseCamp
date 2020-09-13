class: CommandLineTool
id: ../../../h5cc.cwl
inputs:
- id: in_echo
  doc: Show all the shell commands executed
  type: boolean
  inputBinding:
    prefix: -echo
- id: in_prefix
  doc: "Prefix directory to find HDF5 lib/ and include/\nsubdirectories [default:\
    \ /usr/local]"
  type: Directory
  inputBinding:
    prefix: -prefix
- id: in_show
  doc: Show the commands without executing them
  type: boolean
  inputBinding:
    prefix: -show
- id: in_show_config
  doc: Show the HDF5 library configuration summary
  type: boolean
  inputBinding:
    prefix: -showconfig
- id: in_shlib
  doc: "Compile with shared HDF5 libraries [default for hdf5 built\nwithout static\
    \ libraries]"
  type: boolean
  inputBinding:
    prefix: -shlib
- id: in_no_shlib
  doc: "Compile with static HDF5 libraries [default for hdf5 built\nwith static libraries]"
  type: boolean
  inputBinding:
    prefix: -noshlib
- id: in_hdf_five_cc
  doc: '-  use a different C compiler'
  type: long
  inputBinding:
    position: 0
- id: in_hdf_five_clinker
  doc: '-  use a different linker'
  type: long
  inputBinding:
    position: 1
- id: in_variable
  doc: Current value to be replaced
  type: string
  inputBinding:
    position: 0
- id: in_hdf_five_cppflags
  doc: '""'
  type: long
  inputBinding:
    position: 1
- id: in_hdf_five_cflags
  doc: '""'
  type: long
  inputBinding:
    position: 2
- id: in_hdf_five_ldflags
  doc: '""'
  type: long
  inputBinding:
    position: 3
- id: in_hdf_five_libs
  doc: '""'
  type: long
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- h5cc
