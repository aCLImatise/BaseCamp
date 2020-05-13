class: CommandLineTool
id: arb_protpars_bootstrap_viewreport.cwl
inputs:
- id: genetic_code
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
- arb_protpars
- bootstrap
- viewreport
