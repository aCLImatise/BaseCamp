class: CommandLineTool
id: cfm_id.cwl
inputs:
- id: cfm_id_exe
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: spectrum_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: id
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: candidate_file
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: num_highest
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: ppm_mass_to_l
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: abs_mass_to_l
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: prob_thresh_for_prune
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: param_filename
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: config_filename
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: score_type
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: apply_postprocessing
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: output_filename
  doc: ''
  type: string
  inputBinding:
    position: 12
- id: output_msp_or_mgf
  doc: ''
  type: string
  inputBinding:
    position: 13
outputs: []
cwlVersion: v1.1
baseCommand:
- cfm-id
