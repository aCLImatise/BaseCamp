class: CommandLineTool
id: crux_get_ms2_spectrum.cwl
inputs:
- id: ms2_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- get-ms2-spectrum
