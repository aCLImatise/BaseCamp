class: CommandLineTool
id: gatb_h5dump.cwl
inputs:
- id: in_contents
  doc: "Print a list of the file contents and exit\nOptional value 1 also prints attributes."
  type: boolean?
  inputBinding:
    prefix: --contents
- id: in_superblock
  doc: Print the content of the super block
  type: boolean?
  inputBinding:
    prefix: --superblock
- id: in_header
  doc: Print the header only; no data is displayed
  type: boolean?
  inputBinding:
    prefix: --header
- id: in_file_driver
  doc: Specify which driver to open the file with
  type: File?
  inputBinding:
    prefix: --filedriver
- id: in_output
  doc: Output raw data into file F
  type: File?
  inputBinding:
    prefix: --output
- id: in_binary
  doc: Binary file output, of form B
  type: File?
  inputBinding:
    prefix: --binary
- id: in_ddl
  doc: "Output ddl text into file F\nUse blank(empty) filename F to suppress ddl display"
  type: File?
  inputBinding:
    prefix: --ddl
- id: in_attribute
  doc: "Print the specified attribute\nIf an attribute name contains a slash (/),\
    \ escape the\nslash with a preceding backslash (\\).\n(See example section below.)"
  type: string?
  inputBinding:
    prefix: --attribute
- id: in_dataset
  doc: Print the specified dataset
  type: string?
  inputBinding:
    prefix: --dataset
- id: in_group
  doc: Print the specified group and all members
  type: string?
  inputBinding:
    prefix: --group
- id: in_soft_link
  doc: Print the value(s) of the specified soft link
  type: string?
  inputBinding:
    prefix: --soft-link
- id: in_datatype
  doc: Print the specified named datatype
  type: string?
  inputBinding:
    prefix: --datatype
- id: in_any_path
  doc: "Print any attribute, dataset, group, datatype, or link that matches P\nP can\
    \ be the absolute path or just a relative path."
  type: File?
  inputBinding:
    prefix: --any_path
- id: in_only_attr
  doc: "Print the header and value of attributes\nOptional value 0 suppresses printing\
    \ attributes."
  type: boolean?
  inputBinding:
    prefix: --onlyattr
- id: in_object_ids
  doc: Print the object ids
  type: boolean?
  inputBinding:
    prefix: --object-ids
- id: in_properties
  doc: Print dataset filters, storage layout and fill value
  type: boolean?
  inputBinding:
    prefix: --properties
- id: in_packed_bits
  doc: "Print packed bits as unsigned integers, using mask\nformat L for an integer\
    \ dataset specified with\noption -d. L is a list of offset,length values,\nseparated\
    \ by commas. Offset is the beginning bit in\nthe data value and length is the\
    \ number of bits of\nthe mask."
  type: long?
  inputBinding:
    prefix: --packedbits
- id: in_region
  doc: Print dataset pointed by region references
  type: boolean?
  inputBinding:
    prefix: --region
- id: in_escape
  doc: Escape non printing characters
  type: boolean?
  inputBinding:
    prefix: --escape
- id: in_string
  doc: Print 1-byte integer datasets as ASCII
  type: boolean?
  inputBinding:
    prefix: --string
- id: in_no_index
  doc: Do not print array indices with the data
  type: boolean?
  inputBinding:
    prefix: --noindex
- id: in_format
  doc: Set the floating point output format
  type: string?
  inputBinding:
    prefix: --format
- id: in_sort_by
  doc: Sort groups and attributes by index Q
  type: string?
  inputBinding:
    prefix: --sort_by
- id: in_sort_order
  doc: Sort groups and attributes by order Z
  type: string?
  inputBinding:
    prefix: --sort_order
- id: in_enable_error_stack
  doc: messages from the HDF5 error stack as they
  type: long?
  inputBinding:
    prefix: --enable-error-stack
- id: in_width
  doc: "Set the number of columns of output. A value of 0 (zero)\nsets the number\
    \ of columns to the maximum (65535).\nDefault width is 80 columns."
  type: long?
  inputBinding:
    prefix: --width
- id: in_xml
  doc: Output in XML using Schema
  type: boolean?
  inputBinding:
    prefix: --xml
- id: in_use_dtd
  doc: Output in XML using DTD
  type: boolean?
  inputBinding:
    prefix: --use-dtd
- id: in_xml_dtd
  doc: Use the DTD or schema at U
  type: string?
  inputBinding:
    prefix: --xml-dtd
- id: in_xml_ns
  doc: "(XML Schema) Use qualified names n the XML\n\":\": no namespace, default:\
    \ \"hdf5:\"\nE.g., to dump a file called `-f', use h5dump -- -f"
  type: File?
  inputBinding:
    prefix: --xml-ns
- id: in_start
  doc: Offset of start of subsetting selection
  type: string?
  inputBinding:
    prefix: --start
- id: in_stride
  doc: Hyperslab stride
  type: string?
  inputBinding:
    prefix: --stride
- id: in_count
  doc: Number of blocks to include in selection
  type: long?
  inputBinding:
    prefix: --count
- id: in_block
  doc: Size of block in hyperslab
  type: long?
  inputBinding:
    prefix: --block
- id: in_options
  doc: -h,   --help         Print a usage message and exit
  type: string
  inputBinding:
    position: 0
- id: in_occur_dot
  doc: --no-compact-subset  Disable compact form of subsetting and allow the use
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output raw data into file F
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_binary
  doc: Binary file output, of form B
  type: File?
  outputBinding:
    glob: $(inputs.in_binary)
- id: out_ddl
  doc: "Output ddl text into file F\nUse blank(empty) filename F to suppress ddl display"
  type: File?
  outputBinding:
    glob: $(inputs.in_ddl)
hints: []
cwlVersion: v1.1
baseCommand:
- gatb-h5dump
