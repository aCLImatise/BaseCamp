class: CommandLineTool
id: cfm_id_precomputed.cwl
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
- id: score_type
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: output_filename
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs: []
cwlVersion: v1.1
baseCommand:
- cfm-id-precomputed
