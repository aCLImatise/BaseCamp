#!/usr/bin/env cwl-runner

baseCommand:
- tradis_comparison.R
class: CommandLineTool
cwlVersion: v1.0
id: tradis_comparison.r
inputs:
- doc: ''
  id: cut_off
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: ''
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ''
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: ''
  id: controls
  inputBinding:
    prefix: --controls
  type: string
- doc: ''
  id: conditions
  inputBinding:
    prefix: --conditions
  type: string
