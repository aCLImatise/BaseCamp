#!/usr/bin/env cwl-runner

baseCommand:
- svm_grid_modelling_singlet.py
class: CommandLineTool
cwlVersion: v1.0
id: svm_grid_modelling_singlet.py
inputs:
- doc: ''
  id: grid_py
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: grid_options
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: svm_options
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: dataset
  inputBinding:
    position: 3
  type: string
