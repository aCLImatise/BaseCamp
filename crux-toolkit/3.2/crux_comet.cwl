class: CommandLineTool
id: ../../../crux_comet.cwl
inputs:
- id: input_spectra
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- comet
