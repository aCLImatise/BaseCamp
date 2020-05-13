class: CommandLineTool
id: arb_proml_randomize.cwl
inputs:
- id: bootstrap
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: aa_change_model
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: view_report
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: analysis
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: randomize
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: rearrange
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: rate_variation
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: variation_coeff
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: hmm_rates
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_v_fraction
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: interactive
  doc: ''
  type: long
  inputBinding:
    position: 10
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_proml
- randomize
