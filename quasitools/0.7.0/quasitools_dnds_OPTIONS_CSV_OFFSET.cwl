class: CommandLineTool
id: quasitools_dnds_OPTIONS_CSV_OFFSET.cwl
inputs:
- id: reference
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: offset
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- quasitools
- dnds
- OPTIONS
- CSV
- OFFSET
