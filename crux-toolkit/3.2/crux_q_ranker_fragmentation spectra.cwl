class: CommandLineTool
id: crux_q_ranker_fragmentation spectra.cwl
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
- q-ranker
- fragmentation spectra
