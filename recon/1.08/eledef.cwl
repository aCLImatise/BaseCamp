#!/usr/bin/env cwl-runner

baseCommand:
- eledef
class: CommandLineTool
cwlVersion: v1.0
id: eledef
inputs:
- doc: ''
  id: ele_def
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: seq_list
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: msp_file
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: method
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: cut_off
  inputBinding:
    position: 4
  type: string
