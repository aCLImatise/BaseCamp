class: CommandLineTool
id: arb_dnapars_bootstrap_threshold_pars.cwl
inputs:
- id: search_depth
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: view_report
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: randomize
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: transversion_pars
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: threshold_pars
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
- arb_dnapars
- bootstrap
- threshold_pars
