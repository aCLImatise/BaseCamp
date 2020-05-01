#!/usr/bin/env cwl-runner

baseCommand:
- rfheader
class: CommandLineTool
cwlVersion: v1.0
id: rfheader
inputs:
- doc: ''
  id: refine
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: the
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: header
  inputBinding:
    position: 2
  type: string
