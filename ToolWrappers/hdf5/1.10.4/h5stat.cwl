class: CommandLineTool
id: h5stat.cwl
inputs:
- id: in_file
  doc: Print file information
  type: boolean
  inputBinding:
    prefix: --file
- id: in_file_metadata
  doc: Print file space information for file's metadata
  type: boolean
  inputBinding:
    prefix: --filemetadata
- id: in_group
  doc: Print group information
  type: boolean
  inputBinding:
    prefix: --group
- id: in_links
  doc: "Set the threshold for the # of links when printing\ninformation for small\
    \ groups.  N is an integer greater\nthan 0.  The default threshold is 10."
  type: long
  inputBinding:
    prefix: --links
- id: in_group_metadata
  doc: Print file space information for groups' metadata
  type: boolean
  inputBinding:
    prefix: --groupmetadata
- id: in_d_set
  doc: Print dataset information
  type: boolean
  inputBinding:
    prefix: --dset
- id: in_dims
  doc: "Set the threshold for the dimension sizes when printing\ninformation for small\
    \ datasets.  N is an integer greater\nthan 0.  The default threshold is 10."
  type: long
  inputBinding:
    prefix: --dims
- id: in_d_set_metadata
  doc: Print file space information for datasets' metadata
  type: boolean
  inputBinding:
    prefix: --dsetmetadata
- id: in_d_type_metadata
  doc: Print datasets' datatype information
  type: boolean
  inputBinding:
    prefix: --dtypemetadata
- id: in_attribute
  doc: Print attribute information
  type: boolean
  inputBinding:
    prefix: --attribute
- id: in_num_attrs
  doc: "Set the threshold for the # of attributes when printing\ninformation for small\
    \ # of attributes.  N is an integer greater\nthan 0.  The default threshold is\
    \ 10."
  type: long
  inputBinding:
    prefix: --numattrs
- id: in_free_space
  doc: Print free space information
  type: boolean
  inputBinding:
    prefix: --freespace
- id: in_summary
  doc: Print summary of file space information
  type: boolean
  inputBinding:
    prefix: --summary
- id: in_enable_error_stack
  doc: Prints messages from the HDF5 error stack as they occur
  type: boolean
  inputBinding:
    prefix: --enable-error-stack
- id: in_options
  doc: -h, --help            Print a usage message and exit
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- h5stat
