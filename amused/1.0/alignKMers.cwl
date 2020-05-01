#!/usr/bin/env cwl-runner

baseCommand:
- alignKMers
class: CommandLineTool
cwlVersion: v1.0
id: alignkmers
inputs:
- doc: = unaligned k-mers
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: = minimum overlap to align [default=3]
  id: v
  inputBinding:
    prefix: -v
  type: long
- doc: = also reverse complement
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: = penalty for mismatches [default=1]
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: '= '
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: = where to output results [default=stdout]
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: = where to output results [default=stderr]
  id: l
  inputBinding:
    prefix: -l
  type: string
