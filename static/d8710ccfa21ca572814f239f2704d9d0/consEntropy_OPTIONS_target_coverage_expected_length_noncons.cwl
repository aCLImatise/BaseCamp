class: CommandLineTool
id: consEntropy_OPTIONS_target_coverage_expected_length_noncons.mod.cwl
inputs:
- id: cons_mod
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: non_cons_mod
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- consEntropy
- OPTIONS
- target-coverage
- expected-length
- noncons.mod
