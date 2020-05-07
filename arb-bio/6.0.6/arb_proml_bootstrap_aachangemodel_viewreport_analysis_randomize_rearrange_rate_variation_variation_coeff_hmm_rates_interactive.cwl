class: CommandLineTool
id: arb_proml_bootstrap_aachangemodel_viewreport_analysis_randomize_rearrange_rate_variation_variation_coeff_hmm_rates_interactive.cwl
inputs:
- id: in_v_fraction
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: interactive
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_proml
- bootstrap
- aachangemodel
- viewreport
- analysis
- randomize
- rearrange
- rate_variation
- variation_coeff
- hmm_rates
- interactive
