#!/usr/bin/env cwl-runner

baseCommand:
- splicecomp
class: CommandLineTool
cwlVersion: v1.0
id: splicecomp
inputs:
- doc: table A
  id: a
  inputBinding:
    prefix: -a
  type: string
- doc: table B
  id: b
  inputBinding:
    prefix: -b
  type: string
- doc: Output directory, default='splicecomp_out'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: Coverage cutoff, default=0
  id: cc
  inputBinding:
    prefix: -cc
  type: string
