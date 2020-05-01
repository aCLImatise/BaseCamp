#!/usr/bin/env cwl-runner

baseCommand:
- cfm-annotate
class: CommandLineTool
cwlVersion: v1.0
id: cfm-annotate
inputs:
- doc: ''
  id: cfm_annotate_exe
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: smiles_or_inch_i
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: spectrum_file
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: id
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: ppm_mass_to_l
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: abs_mass_to_l
  inputBinding:
    position: 5
  type: string
- doc: ''
  id: param_filename
  inputBinding:
    position: 6
  type: string
- doc: ''
  id: config_filename
  inputBinding:
    position: 7
  type: string
- doc: ''
  id: output_filename
  inputBinding:
    position: 8
  type: string
