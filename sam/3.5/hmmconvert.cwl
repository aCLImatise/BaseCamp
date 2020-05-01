#!/usr/bin/env cwl-runner

baseCommand:
- hmmconvert
class: CommandLineTool
cwlVersion: v1.0
id: hmmconvert
inputs:
- doc: required
  id: run_name
  inputBinding:
    position: 0
  type: string
- doc: model file
  id: model_file
  inputBinding:
    prefix: -model_file
  type: string
- doc: <0/1>     target format ASCII/BINARY
  id: binary_output
  inputBinding:
    prefix: -binary_output
  type: boolean
