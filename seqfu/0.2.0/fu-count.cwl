#!/usr/bin/env cwl-runner

baseCommand:
- fu-count
class: CommandLineTool
cwlVersion: v1.0
id: fu-count
inputs:
- doc: ''
  id: f_qc
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: file_1
  inputBinding:
    position: 1
  type: File
- doc: ''
  id: file_n
  inputBinding:
    position: 2
  type: File
