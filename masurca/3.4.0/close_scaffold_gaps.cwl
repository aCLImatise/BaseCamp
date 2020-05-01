#!/usr/bin/env cwl-runner

baseCommand:
- close_scaffold_gaps.sh
class: CommandLineTool
cwlVersion: v1.0
id: close_scaffold_gaps.sh
inputs:
- doc: ''
  id: merge_scaffold_ssh
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: r
  inputBinding:
    prefix: -r
  type: string
- doc: ''
  id: q
  inputBinding:
    prefix: -q
  type: string
- doc: ''
  id: t
  inputBinding:
    prefix: -t
  type: string
