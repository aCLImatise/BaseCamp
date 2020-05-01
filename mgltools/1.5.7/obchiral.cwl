#!/usr/bin/env cwl-runner

baseCommand:
- obchiral
class: CommandLineTool
cwlVersion: v1.0
id: obchiral
inputs:
- doc: ''
  id: filename
  inputBinding:
    position: 0
  type: File
