class: CommandLineTool
id: arb_protpars_bootstrap_geneticcode_viewreport_randomize_interactive.cwl
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
- arb_protpars
- bootstrap
- geneticcode
- viewreport
- randomize
- interactive
