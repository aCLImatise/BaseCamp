class: CommandLineTool
id: crux_bullseye_MS1 spectra.cwl
inputs:
- id: ms2_spectra
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- bullseye
- MS1 spectra
