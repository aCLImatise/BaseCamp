#!/usr/bin/env cwl-runner

baseCommand:
- cfm-id
class: CommandLineTool
cwlVersion: v1.0
id: cfm-id
inputs:
- doc: ''
  id: cfm_id_exe
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: spectrum_file
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: id
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: candidate_file
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: num_highest
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: ppm_mass_to_l
  inputBinding:
    position: 5
  type: string
- doc: ''
  id: abs_mass_to_l
  inputBinding:
    position: 6
  type: string
- doc: ''
  id: prob_thresh_for_prune
  inputBinding:
    position: 7
  type: string
- doc: ''
  id: param_filename
  inputBinding:
    position: 8
  type: string
- doc: ''
  id: config_filename
  inputBinding:
    position: 9
  type: string
- doc: ''
  id: score_type
  inputBinding:
    position: 10
  type: string
- doc: ''
  id: apply_postprocessing
  inputBinding:
    position: 11
  type: string
- doc: ''
  id: output_filename
  inputBinding:
    position: 12
  type: string
- doc: ''
  id: output_msp_or_mgf
  inputBinding:
    position: 13
  type: string
