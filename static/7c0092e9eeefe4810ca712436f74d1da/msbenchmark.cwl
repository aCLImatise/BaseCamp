class: CommandLineTool
id: ../../../msbenchmark.cwl
inputs:
- id: var_0
  doc: ''
  type: string
  inputBinding:
    prefix: --filter
- id: spectra_vertical_line_chromatograms_vertical_line_ramp_adapter_vertical_line_ramp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: binary_vertical_lineno_binary
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: another
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: var_5
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- msbenchmark
