class: CommandLineTool
id: ../../../PretextMap.sse42.cwl
inputs:
- id: in_sort_order
  doc: ({descend}, ascend)
  type: boolean
  inputBinding:
    prefix: --sortorder
- id: in_mapq
  doc: ''
  type: string
  inputBinding:
    prefix: --mapq
- id: in_filter_include
  doc: '"seq_ [, seq_]*"'
  type: boolean
  inputBinding:
    prefix: --filterInclude
- id: in_filter_exclude
  doc: '"seq_ [, seq_]*")'
  type: boolean
  inputBinding:
    prefix: --filterExclude
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- PretextMap.sse42
