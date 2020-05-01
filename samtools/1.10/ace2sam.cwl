#!/usr/bin/env cwl-runner

baseCommand:
- ace2sam
class: CommandLineTool
cwlVersion: v1.0
id: ace2sam
inputs:
- doc: ''
  id: in_ace
  inputBinding:
    position: 0
  type: string
- doc: output padded SAM
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: write the contig sequence in SAM
  id: c
  inputBinding:
    prefix: -c
  type: boolean
