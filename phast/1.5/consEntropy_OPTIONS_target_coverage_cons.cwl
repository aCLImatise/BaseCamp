class: CommandLineTool
id: consEntropy_OPTIONS_target_coverage_cons.mod.cwl
inputs:
- id: expected_length
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: cons_mod
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: non_cons_mod
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- consEntropy
- OPTIONS
- target-coverage
- cons.mod
