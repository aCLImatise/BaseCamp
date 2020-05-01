#!/usr/bin/env cwl-runner

baseCommand:
- mscat
class: CommandLineTool
cwlVersion: v1.0
id: mscat
inputs:
- doc: ''
  id: filename
  inputBinding:
    position: 0
  type: File
