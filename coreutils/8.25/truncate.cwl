#!/usr/bin/env cwl-runner

baseCommand:
- truncate
class: CommandLineTool
cwlVersion: v1.0
id: truncate
inputs:
- doc: ''
  id: option
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: file
  inputBinding:
    position: 1
  type: File
- doc: do not create any files
  id: no_create
  inputBinding:
    prefix: --no-create
  type: boolean
- doc: treat SIZE as number of IO blocks instead of bytes
  id: io_blocks
  inputBinding:
    prefix: --io-blocks
  type: boolean
- doc: base size on RFILE
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: set or adjust the file size by SIZE bytes
  id: size
  inputBinding:
    prefix: --size
  type: long
