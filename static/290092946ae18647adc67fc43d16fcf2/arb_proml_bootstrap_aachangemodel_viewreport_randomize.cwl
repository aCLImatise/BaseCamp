class: CommandLineTool
id: arb_proml_bootstrap_aachangemodel_viewreport_randomize.cwl
inputs:
- id: analysis
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: randomize
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: rearrange
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: rate_variation
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: variation_coeff
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: hmm_rates
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_v_fraction
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: interactive
  doc: ''
  type: long
  inputBinding:
    position: 7
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_proml
- bootstrap
- aachangemodel
- viewreport
- randomize
