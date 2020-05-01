#!/usr/bin/env cwl-runner

baseCommand:
- mapsifter
class: CommandLineTool
cwlVersion: v1.0
id: mapsifter
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
- doc: 'exclude contained '
  id: exclude
  inputBinding:
    prefix: -exclude
  type: boolean
- doc: 'upper bound on scores '
  id: upper
  inputBinding:
    prefix: -upper
  type: boolean
- doc: 'lower bound on scores '
  id: lower
  inputBinding:
    prefix: -lower
  type: boolean
- doc: 'target regions file '
  id: target
  inputBinding:
    prefix: -target
  type: boolean
- doc: 'print about message '
  id: about
  inputBinding:
    prefix: -about
  type: boolean
