class: CommandLineTool
id: consEntropy_OPTIONS_cons.mod.cwl
inputs:
- id: target_coverage
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: expected_length
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: cons_mod
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: non_cons_mod
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- consEntropy
- OPTIONS
- cons.mod
