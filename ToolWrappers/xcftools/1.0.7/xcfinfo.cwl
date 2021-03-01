class: CommandLineTool
id: xcfinfo.cwl
inputs:
- id: in_show_version_
  doc: show version (--version)
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_show_progress_messages
  doc: show progress messages (--verbose)
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_input_bzip_compressed
  doc: input is bzip2 compressed (--bzip)
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_use_separate_groups
  doc: use 'string' to separate the groups in the paths (--path-separator)
  type: File?
  inputBinding:
    prefix: -p
- id: in_input_gzip_compressed
  doc: input is gzip compressed (--gzip)
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_use_decompress_input
  doc: use 'command' to decompress input (--unpack)
  type: string?
  inputBinding:
    prefix: -Z
- id: in_use_utf_
  doc: use UTF-8 for layer names (--utf8)
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_filename_dot_xcf
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- xcfinfo
