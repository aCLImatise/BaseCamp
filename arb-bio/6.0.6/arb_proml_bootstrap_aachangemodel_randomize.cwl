class: CommandLineTool
id: arb_proml_bootstrap_aachangemodel_randomize.cwl
inputs:
- id: view_report
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: analysis
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: randomize
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: rearrange
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: rate_variation
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: variation_coeff
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: hmm_rates
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_v_fraction
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: interactive
  doc: ''
  type: long
  inputBinding:
    position: 8
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_proml
- bootstrap
- aachangemodel
- randomize
