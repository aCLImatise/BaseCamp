class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/crux_bullseye.cwl
inputs:
- id: ms_one_spectra
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ms_two_spectra
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- bullseye
