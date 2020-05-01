#!/usr/bin/env cwl-runner

baseCommand:
- binreads
class: CommandLineTool
cwlVersion: v1.0
id: binreads
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: bed_format_file
  inputBinding:
    position: 1
  type: string
- doc: 'Name of output file (default: stdout) '
  id: output
  inputBinding:
    prefix: -output
  type: boolean
- doc: 'chrom sizes file '
  id: chrom
  inputBinding:
    prefix: -chrom
  type: boolean
- doc: 'print more run info '
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
- doc: 'size of bins '
  id: bin
  inputBinding:
    prefix: -bin
  type: boolean
- doc: 'print about message '
  id: about
  inputBinding:
    prefix: -about
  type: boolean
