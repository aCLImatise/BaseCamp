class: CommandLineTool
id: arb_dnapars_bootstrap_searchdepth_viewreport_randomize_interactive.cwl
inputs:
- id: transversion_pars
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: threshold_pars
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
- arb_dnapars
- bootstrap
- searchdepth
- viewreport
- randomize
- interactive
