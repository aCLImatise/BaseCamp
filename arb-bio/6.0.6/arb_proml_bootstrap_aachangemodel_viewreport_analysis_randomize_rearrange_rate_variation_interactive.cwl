class: CommandLineTool
id: arb_proml_bootstrap_aachangemodel_viewreport_analysis_randomize_rearrange_rate_variation_interactive.cwl
inputs:
- id: variation_coeff
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: hmm_rates
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_v_fraction
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: interactive
  doc: ''
  type: long
  inputBinding:
    position: 3
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
- interactive
