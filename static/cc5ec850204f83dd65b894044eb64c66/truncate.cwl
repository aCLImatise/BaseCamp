class: CommandLineTool
id: ../../../truncate.cwl
inputs:
- id: no_create
  doc: do not create any files
  type: boolean
  inputBinding:
    prefix: --no-create
- id: io_blocks
  doc: treat SIZE as number of IO blocks instead of bytes
  type: boolean
  inputBinding:
    prefix: --io-blocks
- id: reference
  doc: base size on RFILE
  type: string
  inputBinding:
    prefix: --reference
- id: size
  doc: set or adjust the file size by SIZE bytes
  type: long
  inputBinding:
    prefix: --size
- id: option_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_dot_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- truncate
