class: CommandLineTool
id: ../../../prefixEditDistance_matchLimitGenerate.cwl
inputs:
- id: mine_value
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: max_evalue
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: step
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- prefixEditDistance-matchLimitGenerate
