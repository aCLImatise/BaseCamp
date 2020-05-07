class: CommandLineTool
id: quasitools_dnds_CSV.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: csv
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: reference
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: offset
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- quasitools
- dnds
- CSV
