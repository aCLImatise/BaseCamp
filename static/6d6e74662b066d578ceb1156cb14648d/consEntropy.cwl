class: CommandLineTool
id: ../../../consEntropy.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- consEntropy
