#!/usr/bin/env cwl-runner

baseCommand:
- svm-train
class: CommandLineTool
cwlVersion: v1.0
id: svm-train
inputs:
- doc: ''
  id: training_set_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: model_file
  inputBinding:
    position: 1
  type: string
