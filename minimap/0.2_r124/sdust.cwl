#!/usr/bin/env cwl-runner

baseCommand:
- sdust
class: CommandLineTool
cwlVersion: v1.0
id: sdust
inputs:
- doc: ''
  id: '64'
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: '20'
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: in_fa
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: ''
  id: t
  inputBinding:
    prefix: -t
  type: boolean
