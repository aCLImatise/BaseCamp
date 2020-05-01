#!/usr/bin/env cwl-runner

baseCommand:
- bgzip
class: CommandLineTool
cwlVersion: v1.0
id: bgzip
inputs:
- doc: write on standard output, keep original files unchanged
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: decompress
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: overwrite files without asking
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: decompress at virtual file pointer INT
  id: b
  inputBinding:
    prefix: -b
  type: long
- doc: decompress INT bytes in the uncompressed file
  id: s
  inputBinding:
    prefix: -s
  type: long
