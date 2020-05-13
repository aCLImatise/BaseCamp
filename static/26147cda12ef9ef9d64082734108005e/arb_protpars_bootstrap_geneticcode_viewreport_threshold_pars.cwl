class: CommandLineTool
id: arb_protpars_bootstrap_geneticcode_viewreport_threshold_pars.cwl
inputs:
- id: randomize
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
- arb_protpars
- bootstrap
- geneticcode
- viewreport
- threshold_pars
