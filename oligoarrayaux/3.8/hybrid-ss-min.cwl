#!/usr/bin/env cwl-runner

baseCommand:
- hybrid-ss-min
class: CommandLineTool
cwlVersion: v1.0
id: hybrid-ss-min
inputs:
- doc: ''
  id: file
  inputBinding:
    position: 0
  type: File
