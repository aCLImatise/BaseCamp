#!/usr/bin/env cwl-runner

baseCommand:
- locarna_deviation
class: CommandLineTool
cwlVersion: v1.0
id: locarna_deviation
inputs:
- doc: ''
  id: deviation
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: aln_file
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: ref_aln_file
  inputBinding:
    position: 2
  type: string
