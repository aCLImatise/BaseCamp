class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/PretextMap.sse42.cwl
inputs:
- id: filter_include
  doc: '"seq_ [, seq_]*"'
  type: boolean
  inputBinding:
    prefix: --filterInclude
- id: filter_exclude
  doc: '"seq_ [, seq_]*")'
  type: boolean
  inputBinding:
    prefix: --filterExclude
outputs: []
cwlVersion: v1.1
baseCommand:
- PretextMap.sse42
