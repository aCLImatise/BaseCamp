class: CommandLineTool
id: ../../../compute_stats.cwl
inputs:
- id: input_filename
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: measured_spec_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: predicted_spec_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: num_spectra_per_mol
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: ppm_mass_to_l
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: abs_mass_to_l
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: output_filename
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: cumulative_intensity_thresh
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: apply_cutoffs
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: clean_target_spectra
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: quanti_se_spectra_dec_pl
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: num_groups
  doc: ''
  type: string
  inputBinding:
    position: 11
outputs: []
cwlVersion: v1.1
baseCommand:
- compute-stats
