class: CommandLineTool
id: consEntropy_expected_length.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: target_coverage
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: expected_length
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: cons_mod
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: non_cons_mod
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- consEntropy
- expected-length
