#!/usr/bin/env cwl-runner

baseCommand:
- gfapy-validate
class: CommandLineTool
cwlVersion: v1.0
id: gfapy-validate
inputs:
- doc: ''
  id: filename
  inputBinding:
    position: 0
  type: File
