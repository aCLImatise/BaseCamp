class: CommandLineTool
id: a3m_database_filter.cwl
inputs:
- id: ff_index_a3m_database_prefix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ff_index_a3m_database_prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: filter
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: i
  doc: ''
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
- id: s
  doc: ''
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- a3m_database_filter
