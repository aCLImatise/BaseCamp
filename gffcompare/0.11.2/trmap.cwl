#!/usr/bin/env cwl-runner

baseCommand:
- trmap
class: CommandLineTool
cwlVersion: v1.0
id: trmap
inputs:
- doc: ''
  id: ref_gff
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: query_gff
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ''
  id: strict_match
  inputBinding:
    prefix: --strict-match
  type: boolean
