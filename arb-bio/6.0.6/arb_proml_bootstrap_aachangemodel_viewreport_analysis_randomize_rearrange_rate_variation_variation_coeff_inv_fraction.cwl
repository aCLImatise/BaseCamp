class: CommandLineTool
id: arb_proml_bootstrap_aachangemodel_viewreport_analysis_randomize_rearrange_rate_variation_variation_coeff_inv_fraction.cwl
inputs:
- id: hmm_rates
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_v_fraction
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: interactive
  doc: ''
  type: long
  inputBinding:
    position: 2
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
- inv_fraction
