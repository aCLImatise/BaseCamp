class: CommandLineTool
id: run_spp.R.cwl
inputs:
- id: r_script
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: run_sp_pr
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- run_spp.R
