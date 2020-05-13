class: CommandLineTool
id: quasitools_dnds_OPTIONS_OFFSET.cwl
inputs:
- id: csv
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reference
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: offset
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- quasitools
- dnds
- OPTIONS
- OFFSET
