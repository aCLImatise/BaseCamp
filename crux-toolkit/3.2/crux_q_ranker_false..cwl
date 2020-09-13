class: CommandLineTool
id: ../../../crux_q_ranker_false..cwl
inputs:
- id: in_crux
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_q_ranker
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_fragmentation_spectra
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- crux
- q-ranker
- false.
