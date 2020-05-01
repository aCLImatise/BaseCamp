#!/usr/bin/env cwl-runner

baseCommand:
- cfm-train
class: CommandLineTool
cwlVersion: v1.0
id: cfm-train
inputs:
- doc: ''
  id: cfm_train_exe
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: input_filename
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: feature_filename
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: config_filename
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: peak_file_dir
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: group
  inputBinding:
    position: 5
  type: string
- doc: ''
  id: status_filename
  inputBinding:
    position: 6
  type: string
- doc: ''
  id: no_train
  inputBinding:
    position: 7
  type: string
- doc: ''
  id: start_energy
  inputBinding:
    position: 8
  type: string
