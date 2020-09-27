class: CommandLineTool
id: compute_stats.cwl
inputs:
- id: in_input_filename
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_measured_spec_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_predicted_spec_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_num_spectra_per_mol
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
- id: in_output_filename
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_cumulative_intensity_thresh
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_apply_cutoffs
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_clean_target_spectra
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_quanti_se_spectra_dec_pl
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: in_num_groups
  doc: ''
  type: string
  inputBinding:
    position: 11
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- compute-stats
