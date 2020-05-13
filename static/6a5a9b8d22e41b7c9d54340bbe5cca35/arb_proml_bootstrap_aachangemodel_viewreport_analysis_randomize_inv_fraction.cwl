class: CommandLineTool
id: arb_proml_bootstrap_aachangemodel_viewreport_analysis_randomize_inv_fraction.cwl
inputs:
- id: rearrange
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: rate_variation
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: variation_coeff
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: hmm_rates
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_v_fraction
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: interactive
  doc: ''
  type: long
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_proml
- bootstrap
- aachangemodel
- viewreport
- analysis
- randomize
- inv_fraction
