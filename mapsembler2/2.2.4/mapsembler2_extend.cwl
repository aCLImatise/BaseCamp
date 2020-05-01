#!/usr/bin/env cwl-runner

baseCommand:
- mapsembler2_extend
class: CommandLineTool
cwlVersion: v1.0
id: mapsembler2_extend
inputs:
- doc: ': where to write outputs. Default: "res_mapsembler" '
  id: o
  inputBinding:
    prefix: -o
  type: File
- doc: ': kind of prosses Breadth or Depth. Default: Breadth '
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: this message and exit
  id: h
  inputBinding:
    prefix: -h
  type: string
