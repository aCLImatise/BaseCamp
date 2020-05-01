#!/usr/bin/env cwl-runner

baseCommand:
- svm_classify
class: CommandLineTool
cwlVersion: v1.0
id: svm_classify
inputs:
- doc: ''
  id: example_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: model_file
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: output_file
  inputBinding:
    position: 2
  type: string
- doc: '[0..3]  -> verbosity level (default 2)'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: '[0,1]   -> 0: old output format of V1.0 -> 1: output the value of decision
    function (default)'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
