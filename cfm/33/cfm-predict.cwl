#!/usr/bin/env cwl-runner

baseCommand:
- cfm-predict
class: CommandLineTool
cwlVersion: v1.0
id: cfm-predict
inputs:
- doc: ''
  id: cfm_predict_exe
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: input_smiles_or_inch_i
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: prob_thresh_for_prune
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: param_filename
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: config_filename
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: include_annotations
  inputBinding:
    position: 5
  type: string
- doc: ''
  id: output_filename
  inputBinding:
    position: 6
  type: string
- doc: ''
  id: apply_post_processing
  inputBinding:
    position: 7
  type: string
