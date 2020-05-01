#!/usr/bin/env cwl-runner

baseCommand:
- ecogrep
class: CommandLineTool
cwlVersion: v1.0
id: ecogrep
inputs:
- doc: ''
  id: filename
  inputBinding:
    position: 0
  type: File
- doc: ''
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: ''
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: ''
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: ''
  id: r
  inputBinding:
    prefix: -r
  type: string
- doc: ''
  id: v
  inputBinding:
    prefix: -v
  type: boolean
