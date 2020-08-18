class: CommandLineTool
id: ../../../dr_disco_logo_sequence.cwl
inputs:
- id: region
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_input_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- dr-disco
- logo-sequence
