class: CommandLineTool
id: crux_bullseye_MS2 spectra.cwl
inputs:
- id: ms1_spectra
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ms2_spectra
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- bullseye
- MS2 spectra
