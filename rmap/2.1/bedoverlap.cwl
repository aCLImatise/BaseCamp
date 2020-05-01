#!/usr/bin/env cwl-runner

baseCommand:
- bedoverlap
class: CommandLineTool
cwlVersion: v1.0
id: bedoverlap
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: bed_regions
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: bed_map_locations
  inputBinding:
    position: 2
  type: string
- doc: 'Name of output file (default: stdout) '
  id: output
  inputBinding:
    prefix: -output
  type: boolean
- doc: 'print about message '
  id: about
  inputBinding:
    prefix: -about
  type: boolean
