#!/usr/bin/env cwl-runner

baseCommand:
- cfm-id-precomputed
class: CommandLineTool
cwlVersion: v1.0
id: cfm-id-precomputed
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
  id: score_type
  inputBinding:
    position: 7
  type: string
- doc: ''
  id: output_filename
  inputBinding:
    position: 8
  type: string
