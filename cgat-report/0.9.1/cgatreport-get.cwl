#!/usr/bin/env cwl-runner

baseCommand:
- cgatreport-get
class: CommandLineTool
cwlVersion: v1.0
id: cgatreport-get
inputs:
- doc: loglevel. The higher, the more output [default=2]
  id: verbose
  inputBinding:
    prefix: --verbose
  type: string
- doc: view keys in cache [default=False]
  id: view
  inputBinding:
    prefix: --view
  type: boolean
- doc: tracker to use [default=none]
  id: tracker
  inputBinding:
    prefix: --tracker
  type: string
- doc: tracks to include [default=none]
  id: tracks
  inputBinding:
    prefix: --tracks
  type: string
- doc: slices to include [default=none]
  id: slices
  inputBinding:
    prefix: --slices
  type: string
- doc: groupby by track or slice [default=slice]
  id: group_by
  inputBinding:
    prefix: --groupby
  type: string
- doc: output format [default=tsv]
  id: format
  inputBinding:
    prefix: --format
  type: string
