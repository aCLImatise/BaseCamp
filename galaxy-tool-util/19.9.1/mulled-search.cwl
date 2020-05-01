#!/usr/bin/env cwl-runner

baseCommand:
- mulled-search
class: CommandLineTool
cwlVersion: v1.0
id: mulled-search
inputs:
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ''
  id: non_strict
  inputBinding:
    prefix: --non-strict
  type: boolean
- doc: ''
  id: s
  inputBinding:
    prefix: -s
  type: string
