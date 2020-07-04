class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/xcfinfo.cwl
inputs:
- id: show_version_
  doc: show version (--version)
  type: boolean
  inputBinding:
    prefix: -V
- id: show_progress_messages
  doc: show progress messages (--verbose)
  type: boolean
  inputBinding:
    prefix: -v
- id: input_bzip_compressed
  doc: input is bzip2 compressed (--bzip)
  type: boolean
  inputBinding:
    prefix: -j
- id: use_separate_groups
  doc: use 'string' to separate the groups in the paths (--path-separator)
  type: string
  inputBinding:
    prefix: -p
- id: input_gzip_compressed
  doc: input is gzip compressed (--gzip)
  type: boolean
  inputBinding:
    prefix: -z
- id: use_decompress_input
  doc: use 'command' to decompress input (--unpack)
  type: string
  inputBinding:
    prefix: -Z
- id: use_utf_
  doc: use UTF-8 for layer names (--utf8)
  type: boolean
  inputBinding:
    prefix: -u
- id: filename_dot_xcf
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- xcfinfo
