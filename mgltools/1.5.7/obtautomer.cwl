#!/usr/bin/env cwl-runner

baseCommand:
- obtautomer
class: CommandLineTool
cwlVersion: v1.0
id: obtautomer
inputs:
- doc: ''
  id: filename
  inputBinding:
    position: 0
  type: File
- doc: ''
  id: c
  inputBinding:
    prefix: -c
  type: boolean
