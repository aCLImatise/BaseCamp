#!/usr/bin/env cwl-runner

baseCommand:
- bed_intersect.py
class: CommandLineTool
cwlVersion: v1.0
id: bed_intersect.py
inputs:
- doc: ''
  id: bed_file_1
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: bed_file_2
  inputBinding:
    position: 1
  type: string
- doc: Require this much overlap (default 1bp)
  id: min_cols
  inputBinding:
    prefix: --mincols
  type: long
- doc: upstream interval padding (default 0bp)
  id: upstream_pad
  inputBinding:
    prefix: --upstream_pad
  type: string
- doc: downstream interval padding (default 0bp)
  id: downstream_pad
  inputBinding:
    prefix: --downstream_pad
  type: string
- doc: Print regions that DO NOT overlap
  id: reverse
  inputBinding:
    prefix: --reverse
  type: boolean
- doc: Just print '1' if interval overlaps or '0' otherwise
  id: booleans
  inputBinding:
    prefix: --booleans
  type: boolean
