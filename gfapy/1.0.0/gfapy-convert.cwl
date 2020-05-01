#!/usr/bin/env cwl-runner

baseCommand:
- gfapy-convert
class: CommandLineTool
cwlVersion: v1.0
id: gfapy-convert
inputs:
- doc: ''
  id: filename
  inputBinding:
    position: 0
  type: File
