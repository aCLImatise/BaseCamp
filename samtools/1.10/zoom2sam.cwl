#!/usr/bin/env cwl-runner

baseCommand:
- zoom2sam.pl
class: CommandLineTool
cwlVersion: v1.0
id: zoom2sam.pl
inputs:
- doc: ''
  id: read_len
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: aln_zoom
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: p
  inputBinding:
    prefix: -p
  type: boolean
