class: CommandLineTool
id: h5copy.cwl
inputs:
- id: in_output
  doc: output file name
  type: File
  inputBinding:
    prefix: --output
- id: in_source
  doc: source object name
  type: boolean
  inputBinding:
    prefix: --source
- id: in_destination
  doc: destination object name
  type: boolean
  inputBinding:
    prefix: --destination
- id: in_parents
  doc: No error if existing, make parent groups as needed
  type: boolean
  inputBinding:
    prefix: --parents
- id: in_verbose
  doc: Print information about OBJECTS and OPTIONS
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_enable_error_stack
  doc: Prints messages from the HDF5 error stack as they occur.
  type: boolean
  inputBinding:
    prefix: --enable-error-stack
- id: in_flag
  doc: Flag type
  type: boolean
  inputBinding:
    prefix: --flag
- id: in_objects
  doc: -i, --input        input file name
  type: string
  inputBinding:
    position: 0
- id: in_options
  doc: -h, --help         Print a usage message and exit
  type: string
  inputBinding:
    position: 1
- id: in_shallow
  doc: Copy only immediate members for groups
  type: string
  inputBinding:
    position: 0
- id: in_soft
  doc: Expand soft links into new objects
  type: string
  inputBinding:
    position: 1
- id: in_ext
  doc: Expand external links into new objects
  type: string
  inputBinding:
    position: 2
- id: in_ref
  doc: "Copy references and any referenced objects, i.e., objects\nthat the references\
    \ point to.\nReferenced objects are copied in addition to the objects\nspecified\
    \ on the command line and reference datasets are\npopulated with correct reference\
    \ values. Copies of referenced\ndatasets outside the copy range specified on the\
    \ command line\nwill normally have a different name from the original.\n(Default:Without\
    \ this option, reference value(s) in any\nreference datasets are set to NULL and\
    \ referenced objects are\nnot copied unless they are otherwise within the copy\
    \ range\nspecified on the command line.)"
  type: string
  inputBinding:
    position: 3
- id: in_no_attr
  doc: Copy object without copying attributes
  type: string
  inputBinding:
    position: 4
- id: in_all_flags
  doc: Switches all flags from the default to the non-default setting
  type: string
  inputBinding:
    position: 5
- id: in_h_five_o_copy_shallow_hierarchy_flag
  doc: H5O_COPY_EXPAND_SOFT_LINK_FLAG
  type: long
  inputBinding:
    position: 0
- id: in_h_five_o_copy_expand_ext_link_flag
  doc: H5O_COPY_EXPAND_REFERENCE_FLAG
  type: long
  inputBinding:
    position: 1
- id: in_h_five_o_copy_without_attr_flag
  doc: H5O_COPY_ALL
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output file name
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- h5copy
