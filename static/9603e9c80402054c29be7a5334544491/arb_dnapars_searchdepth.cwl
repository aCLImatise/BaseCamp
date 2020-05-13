class: CommandLineTool
id: arb_dnapars_searchdepth.cwl
inputs:
- id: bootstrap
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: search_depth
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: view_report
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: randomize
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: transversion_pars
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: threshold_pars
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: interactive
  doc: ''
  type: long
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_dnapars
- searchdepth
