class: CommandLineTool
id: crux_q_ranker_search results.cwl
inputs:
- id: fragmentation_spectra
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: search_results
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- q-ranker
- search results
