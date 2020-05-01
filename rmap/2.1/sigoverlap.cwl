#!/usr/bin/env cwl-runner

baseCommand:
- sigoverlap
class: CommandLineTool
cwlVersion: v1.0
id: sigoverlap
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
- doc: 'print more run info '
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
- doc: 'target regions file '
  id: target
  inputBinding:
    prefix: -target
  type: boolean
- doc: 'genome size '
  id: size
  inputBinding:
    prefix: -size
  type: boolean
- doc: 'print about message '
  id: about
  inputBinding:
    prefix: -about
  type: boolean
