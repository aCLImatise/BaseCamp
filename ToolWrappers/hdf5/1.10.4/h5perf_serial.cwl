class: CommandLineTool
id: h5perf_serial.cwl
inputs:
- id: in_which_apis_test
  doc: "Which APIs to test\n[default: all of them]"
  type: string?
  inputBinding:
    prefix: -A
- id: in_selects_chunked_storage
  doc: "Selects chunked storage and defines chunks dimensions\nand sizes\n[default:\
    \ Off]"
  type: string?
  inputBinding:
    prefix: -c
- id: in_dimensions_sizes_dataset
  doc: "Dimensions and sizes of dataset\n[default: 100,200]"
  type: long?
  inputBinding:
    prefix: -e
- id: in_number_iterations_perform
  doc: "Number of iterations to perform\n[default: 1]"
  type: long?
  inputBinding:
    prefix: -i
- id: in_dimension_access_order
  doc: "Dimension access order (see below for description)\n[default: 1,2]"
  type: long?
  inputBinding:
    prefix: -r
- id: in_selects_extendable_dimensions
  doc: "Selects extendable dimensions for HDF5 dataset\n[default: Off]"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_selects_file_driver
  doc: "Selects file driver for HDF5 access\n[default: sec2]"
  type: File?
  inputBinding:
    prefix: -v
- id: in_perform_write_tests
  doc: "Perform write tests, not the read tests\n[default: Off]"
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_dimensions_sizes_transfer
  doc: "Dimensions and sizes of the transfer buffer\n[default: 10,20]"
  type: long?
  inputBinding:
    prefix: -x
- id: in_options
  doc: -h                Print an usage message and exit
  type: string
  inputBinding:
    position: 0
- id: in_vfd
  doc: "- is an HDF5 file driver specifier. Valid values are:\nsec2, stdio, core,\
    \ split, multi, family, direct"
  type: string
  inputBinding:
    position: 0
- id: in_hdf_five_no_cleanup
  doc: Do not remove data files if set [default remove]
  type: long
  inputBinding:
    position: 0
- id: in_hdf_five_prefix
  doc: Data file prefix
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- h5perf_serial
