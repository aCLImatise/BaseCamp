class: CommandLineTool
id: cfm_id.cwl
inputs:
- id: in_spectrum_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_id
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_candidate_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_num_highest
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_ppm_mass_to_l
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_abs_mass_to_l
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_prob_thresh_for_prune
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_param_filename
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_config_filename
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_score_type
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_apply_postprocessing
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: in_output_filename
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: in_output_msp_or_mgf
  doc: ''
  type: string
  inputBinding:
    position: 12
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cfm-id
