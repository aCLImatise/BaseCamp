#!/usr/bin/env cwl-runner

baseCommand:
- summarize
class: CommandLineTool
cwlVersion: v1.0
id: summarize
inputs:
- doc: ''
  id: alignment
  inputBinding:
    position: 0
  type: string
- doc: ': Background GC content '
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: ': Do GSC weighting '
  id: w
  inputBinding:
    prefix: -w
  type: boolean
