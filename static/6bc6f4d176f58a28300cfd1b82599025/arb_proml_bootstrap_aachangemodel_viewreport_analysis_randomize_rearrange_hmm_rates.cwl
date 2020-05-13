class: CommandLineTool
id: arb_proml_bootstrap_aachangemodel_viewreport_analysis_randomize_rearrange_hmm_rates.cwl
inputs:
- id: rate_variation
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: variation_coeff
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: hmm_rates
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_v_fraction
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: interactive
  doc: ''
  type: long
  inputBinding:
    position: 4
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
- hmm_rates
