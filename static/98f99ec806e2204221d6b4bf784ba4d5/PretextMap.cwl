class: CommandLineTool
id: PretextMap.sse42.cwl
inputs:
- id: sort_order
  doc: ({descend}, ascend)
  type: boolean
  inputBinding:
    prefix: --sortorder
- id: mapq
  doc: '{10}'
  type: boolean
  inputBinding:
    prefix: --mapq
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
