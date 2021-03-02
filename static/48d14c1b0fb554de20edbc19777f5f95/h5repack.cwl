class: CommandLineTool
id: h5repack.cwl
inputs:
- id: in_verbose
  doc: Verbose mode, print object information
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_native
  doc: Use a native HDF5 type when repacking
  type: boolean?
  inputBinding:
    prefix: --native
- id: in_enable_error_stack
  doc: Prints messages from the HDF5 error stack as they occur
  type: boolean?
  inputBinding:
    prefix: --enable-error-stack
- id: in_latest
  doc: "Use latest version of file format\nThis option will take precedence over the\
    \ -j and -k options"
  type: boolean?
  inputBinding:
    prefix: --latest
- id: in_low
  doc: "The low bound for library release versions to use when creating\nobjects in\
    \ the file (default is H5F_LIBVER_EARLIEST)"
  type: File?
  inputBinding:
    prefix: --low
- id: in_high
  doc: "The high bound for library release versions to use when creating\nobjects\
    \ in the file (default is H5F_LIBVER_LATEST)"
  type: File?
  inputBinding:
    prefix: --high
- id: in_compact
  doc: Maximum number of links in header messages
  type: long?
  inputBinding:
    prefix: --compact
- id: in_indexed
  doc: Minimum number of links in the indexed format
  type: long?
  inputBinding:
    prefix: --indexed
- id: in_shared_object_header
  doc: '[:F], --ssize=S[:F] Shared object header message minimum size'
  type: long?
  inputBinding:
    prefix: -s
- id: in_minimum
  doc: Do not apply the filter to datasets smaller than M
  type: string?
  inputBinding:
    prefix: --minimum
- id: in_file
  doc: Name of file E with the -f and -l options
  type: File?
  inputBinding:
    prefix: --file
- id: in_u_block
  doc: Name of file U with user block data to be added
  type: File?
  inputBinding:
    prefix: --ublock
- id: in_block
  doc: Size of user block to be added
  type: long?
  inputBinding:
    prefix: --block
- id: in_metadata_block_size
  doc: Metadata block size for H5Pset_meta_block_size
  type: long?
  inputBinding:
    prefix: --metadata_block_size
- id: in_threshold
  doc: Threshold value for H5Pset_alignment
  type: long?
  inputBinding:
    prefix: --threshold
- id: in_alignment
  doc: Alignment value for H5Pset_alignment
  type: long?
  inputBinding:
    prefix: --alignment
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
- id: in_filter
  doc: Filter type
  type: string?
  inputBinding:
    prefix: --filter
- id: in_layout
  doc: Layout type
  type: string?
  inputBinding:
    prefix: --layout
- id: in_fs_strategy
  doc: File space management strategy for H5Pset_file_space_strategy
  type: File?
  inputBinding:
    prefix: --fs_strategy
- id: in_fs_persist
  doc: Persisting or not persisting free-space for H5Pset_file_space_strategy
  type: long?
  inputBinding:
    prefix: --fs_persist
- id: in_fs_threshold
  doc: Free-space section threshold for H5Pset_file_space_strategy
  type: long?
  inputBinding:
    prefix: --fs_threshold
- id: in_fs_pagesize
  doc: "File space page size for H5Pset_file_space_page_size\nM - is an integer greater\
    \ than 1, size of dataset in bytes (default is 0)\nE - is a filename.\nS - is\
    \ an integer\nU - is a filename.\nT - is an integer\nA - is an integer greater\
    \ than zero\nQ - is the sort index type for the input file. It can be \"name\"\
    \ or \"creation_order\" (default)\nZ - is the sort order type for the input file.\
    \ It can be \"descending\" or \"ascending\" (default)\nB - is the user block size,\
    \ any value that is 512 or greater and is\na power of 2 (1024 default)\nF - is\
    \ the shared object header message type, any of <dspace|dtype|fill|\npline|attr>.\
    \ If F is not specified, S applies to all messages\nBOUND is an integer indicating\
    \ the library release versions to use when creating\nobjects in the file (see\
    \ H5Pset_libver_bounds()):\n0: This is H5F_LIBVER_EARLIEST in H5F_libver_t struct\n\
    1: This is H5F_LIBVER_V18 in H5F_libver_t struct\n2: This is H5F_LIBVER_V110 in\
    \ H5F_libver_t struct\n(H5F_LIBVER_LATEST is aliased to H5F_LIBVER_V110 for this\
    \ release\nFS_STRATEGY is a string indicating the file space strategy used:\n\
    FSM_AGGR:\nThe mechanisms used in managing file space are free-space managers,\
    \ aggregators and virtual file driver.\nPAGE:\nThe mechanisms used in managing\
    \ file space are free-space managers with embedded paged aggregation and virtual\
    \ file driver.\nAGGR:\nThe mechanisms used in managing file space are aggregators\
    \ and virtual file driver.\nNONE:\nThe mechanisms used in managing file space\
    \ are virtual file driver.\nThe default strategy when not set is FSM_AGGR without\
    \ persisting free-space.\nFS_PERSIST is 1 to persisting free-space or 0 to not\
    \ persisting free-space.\nThe default when not set is not persisting free-space.\n\
    The value is ignored for AGGR and NONE strategies.\nFS_THRESHOLD is the minimum\
    \ size (in bytes) of free-space sections to be tracked by the library.\nThe default\
    \ when not set is 1.\nThe value is ignored for AGGR and NONE strategies.\nFS_PAGESIZE\
    \ is the size (in bytes) >=512 that is used by the library when the file space\
    \ strategy PAGE is used.\nThe default when not set is 4096.\nFILT - is a string\
    \ with the format:\n<list of objects>:<name of filter>=<filter parameters>\n<list\
    \ of objects> is a comma separated list of object names, meaning apply\ncompression\
    \ only to those objects. If no names are specified, the filter\nis applied to\
    \ all objects\n<name of filter> can be:\nGZIP, to apply the HDF5 GZIP filter (GZIP\
    \ compression)\nSZIP, to apply the HDF5 SZIP filter (SZIP compression)\nSHUF,\
    \ to apply the HDF5 shuffle filter\nFLET, to apply the HDF5 checksum filter\n\
    NBIT, to apply the HDF5 NBIT filter (NBIT compression)\nSOFF, to apply the HDF5\
    \ Scale/Offset filter\nUD,   to apply a user defined filter\nNONE, to remove all\
    \ filters\n<filter parameters> is optional filter parameter information\nGZIP=<deflation\
    \ level> from 1-9\nSZIP=<pixels per block,coding> pixels per block is a even number\
    \ in\n2-32 and coding method is either EC or NN\nSHUF (no parameter)\nFLET (no\
    \ parameter)\nNBIT (no parameter)\nSOFF=<scale_factor,scale_type> scale_factor\
    \ is an integer and scale_type\nis either IN or DS\nUD=<filter_number,filter_flag,cd_value_count,value_1[,value_2,...,value_N]>\n\
    required values for filter_number,filter_flag,cd_value_count,value_1\noptional\
    \ values for value_2 to value_N\nNONE (no parameter)\nLAYT - is a string with\
    \ the format:\n<list of objects>:<layout type>=<layout parameters>\n<list of objects>\
    \ is a comma separated list of object names, meaning that\nlayout information\
    \ is supplied for those objects. If no names are\nspecified, the layout type is\
    \ applied to all objects\n<layout type> can be:\nCHUNK, to apply chunking layout\n\
    COMPA, to apply compact layout\nCONTI, to apply contiguous layout\n<layout parameters>\
    \ is optional layout information\nCHUNK=DIM[xDIM...xDIM], the chunk size of each\
    \ dimension\nCOMPA (no parameter)\nCONTI (no parameter)"
  type: long?
  inputBinding:
    prefix: --fs_pagesize
- id: in_file_one
  doc: Input HDF5 File
  type: long
  inputBinding:
    position: 0
- id: in_file_two
  doc: Output HDF5 File
  type: long
  inputBinding:
    position: 1
- id: in_options
  doc: -h, --help              Print a usage message and exit
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- h5repack
