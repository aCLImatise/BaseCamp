class: CommandLineTool
id: arb_dnapars_bootstrap_searchdepth_viewreport_randomize_transversion_pars_interactive.cwl
inputs:
- id: threshold_pars
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: interactive
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_dnapars
- bootstrap
- searchdepth
- viewreport
- randomize
- transversion_pars
- interactive
