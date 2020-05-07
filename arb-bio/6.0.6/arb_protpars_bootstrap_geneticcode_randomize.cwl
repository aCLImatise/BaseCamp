class: CommandLineTool
id: arb_protpars_bootstrap_geneticcode_randomize.cwl
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
- id: threshold_pars
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: interactive
  doc: ''
  type: long
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_protpars
- bootstrap
- geneticcode
- randomize
