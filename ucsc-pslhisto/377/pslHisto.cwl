class: CommandLineTool
id: ../../../pslHisto.cwl
inputs:
- id: multi_only
  doc: '- omit queries with only one alignment from output.'
  type: boolean
  inputBinding:
    prefix: -multiOnly
- id: nonzero
  doc: '- omit queries with zero values.'
  type: boolean
  inputBinding:
    prefix: -nonZero
outputs: []
cwlVersion: v1.1
baseCommand:
- pslHisto
