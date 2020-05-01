#!/usr/bin/env cwl-runner

baseCommand:
- hicFindRestSite
class: CommandLineTool
cwlVersion: v1.0
id: hicfindrestsite
inputs:
- doc: ''
  id: fast_a
  inputBinding:
    prefix: --fasta
  type: string
- doc: ''
  id: search_pattern
  inputBinding:
    prefix: --searchPattern
  type: string
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: string
