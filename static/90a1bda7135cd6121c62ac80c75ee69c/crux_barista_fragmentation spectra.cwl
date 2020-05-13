class: CommandLineTool
id: crux_barista_fragmentation spectra.cwl
inputs:
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fragmentation_spectra
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: search_results
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- barista
- fragmentation spectra
