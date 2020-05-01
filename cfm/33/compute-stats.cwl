#!/usr/bin/env cwl-runner

baseCommand:
- compute-stats
class: CommandLineTool
cwlVersion: v1.0
id: compute-stats
inputs:
- doc: ''
  id: compute_stats_exe
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: input_filename
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: measured_spec_dir
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: predicted_spec_dir
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: num_spectra_per_mol
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
  id: output_filename
  inputBinding:
    position: 7
  type: string
- doc: ''
  id: cumulative_intensity_thresh
  inputBinding:
    position: 8
  type: string
- doc: ''
  id: apply_cutoffs
  inputBinding:
    position: 9
  type: string
- doc: ''
  id: clean_target_spectra
  inputBinding:
    position: 10
  type: string
- doc: ''
  id: quanti_se_spectra_dec_pl
  inputBinding:
    position: 11
  type: string
- doc: ''
  id: num_groups
  inputBinding:
    position: 12
  type: string
