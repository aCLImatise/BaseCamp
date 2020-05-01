#!/usr/bin/env cwl-runner

baseCommand:
- maf-sort
class: CommandLineTool
cwlVersion: v1.0
id: maf-sort
inputs:
- doc: only print duplicate alignments
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: 'sort by the n-th sequence (default: 1)'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
