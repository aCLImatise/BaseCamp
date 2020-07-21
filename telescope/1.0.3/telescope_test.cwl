class: CommandLineTool
id: ../../../telescope_test.cwl
inputs:
- id: telescope
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- telescope
- test
