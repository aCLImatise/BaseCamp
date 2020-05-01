#!/usr/bin/env cwl-runner

baseCommand:
- obdistgen
class: CommandLineTool
cwlVersion: v1.0
id: obdistgen
inputs:
- doc: ''
  id: filename
  inputBinding:
    position: 0
  type: File
