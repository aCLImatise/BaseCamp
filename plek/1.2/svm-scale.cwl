#!/usr/bin/env cwl-runner

baseCommand:
- svm-scale
class: CommandLineTool
cwlVersion: v1.0
id: svm-scale
inputs:
- doc: ''
  id: data_filename
  inputBinding:
    position: 0
  type: string
