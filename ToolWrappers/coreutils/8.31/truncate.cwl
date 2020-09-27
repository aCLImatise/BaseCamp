class: CommandLineTool
id: truncate.cwl
inputs:
- id: in_no_create
  doc: do not create any files
  type: boolean
  inputBinding:
    prefix: --no-create
- id: in_io_blocks
  doc: treat SIZE as number of IO blocks instead of bytes
  type: boolean
  inputBinding:
    prefix: --io-blocks
- id: in_reference
  doc: base size on RFILE
  type: File
  inputBinding:
    prefix: --reference
- id: in_size
  doc: set or adjust the file size by SIZE bytes
  type: long
  inputBinding:
    prefix: --size
- id: in_option_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file_dot_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- truncate
