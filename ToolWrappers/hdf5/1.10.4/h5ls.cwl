class: CommandLineTool
id: h5ls.cwl
inputs:
- id: in_address
  doc: "Print raw data address.  If dataset is contiguous, address\nis offset in file\
    \ of beginning of raw data. If chunked,\nreturned list of addresses indicates\
    \ offset of each chunk.\nMust be used with -v, --verbose option.\nProvides no\
    \ information for non-dataset objects."
  type: boolean
  inputBinding:
    prefix: --address
- id: in_data
  doc: Print the values of datasets
  type: boolean
  inputBinding:
    prefix: --data
- id: in_enable_error_stack
  doc: Prints messages from the HDF5 error stack as they occur.
  type: boolean
  inputBinding:
    prefix: --enable-error-stack
- id: in_follow_symlinks
  doc: "Follow symbolic links (soft links and external links)\nto display target object\
    \ information.\nWithout this option, h5ls identifies a symbolic link\nas a soft\
    \ link or external link and prints the value\nassigned to the symbolic link; it\
    \ does not provide any\ninformation regarding the target object or determine\n\
    whether the link is a dangling link."
  type: boolean
  inputBinding:
    prefix: --follow-symlinks
- id: in_no_dangling_links
  doc: "Must be used with --follow-symlinks option;\notherwise, h5ls shows error message\
    \ and returns an exit\ncode of 1.\nCheck for any symbolic links (soft links or\
    \ external links)\nthat do not resolve to an existing object (dataset, group,\n\
    or named datatype).\nIf any dangling link is found, this situation is treated\n\
    as an error and h5ls returns an exit code of 1."
  type: boolean
  inputBinding:
    prefix: --no-dangling-links
- id: in_full
  doc: Print full path names instead of base names
  type: boolean
  inputBinding:
    prefix: --full
- id: in_group
  doc: Show information about a group, not its contents
  type: boolean
  inputBinding:
    prefix: --group
- id: in_label
  doc: Label members of compound datasets
  type: boolean
  inputBinding:
    prefix: --label
- id: in_recursive
  doc: all groups recursively, avoiding cycles
  type: string
  inputBinding:
    prefix: --recursive
- id: in_string
  doc: Print 1-byte integer datasets as ASCII
  type: boolean
  inputBinding:
    prefix: --string
- id: in_simple
  doc: Use a machine-readable output format
  type: boolean
  inputBinding:
    prefix: --simple
- id: in_width
  doc: Set the number of columns of output
  type: long
  inputBinding:
    prefix: --width
- id: in_verbose
  doc: Generate more verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_vfd
  doc: Use the specified virtual file driver
  type: File
  inputBinding:
    prefix: --vfd
- id: in_hexdump
  doc: Show raw data in hexadecimal format
  type: boolean
  inputBinding:
    prefix: --hexdump
- id: in_external
  doc: "Follow external links.\nReplaced by --follow-symlinks."
  type: string
  inputBinding:
    prefix: --external
- id: in_errors
  doc: "Show all HDF5 error reporting\nReplaced by --enable-error-stack.\n"
  type: boolean
  inputBinding:
    prefix: --errors
- id: in_options
  doc: -h, -?, --help  Print a usage message and exit
  type: string
  inputBinding:
    position: 0
- id: in_file_slash_object
  doc: "Each object consists of an HDF5 file name optionally followed by a\nslash\
    \ and an object name within the file (if no object is specified\nwithin the file\
    \ then the contents of the root group are displayed).\nThe file name may include\
    \ a printf(3C) integer format such as\n\"%05d\" to open a file family."
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- h5ls
