class: CommandLineTool
id: crux_barista_database_fragmentation spectra.cwl
inputs:
- id: search_results
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- barista
- database
- fragmentation spectra
