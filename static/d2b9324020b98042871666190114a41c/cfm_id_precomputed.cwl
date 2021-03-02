class: CommandLineTool
id: cfm_id_precomputed.cwl
inputs:
- id: in_cfm_id_dot_exe
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_spectrum_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_id
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_candidate_file
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_num_highest
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_ppm_mass_to_l
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_abs_mass_to_l
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_score_type
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_output_filename
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cfm-id-precomputed
