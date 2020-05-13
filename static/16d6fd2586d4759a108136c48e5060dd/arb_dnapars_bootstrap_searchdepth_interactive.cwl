class: CommandLineTool
id: arb_dnapars_bootstrap_searchdepth_interactive.cwl
inputs:
- id: view_report
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: randomize
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: transversion_pars
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: threshold_pars
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
- arb_dnapars
- bootstrap
- searchdepth
- interactive
