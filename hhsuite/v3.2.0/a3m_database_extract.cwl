class: CommandLineTool
id: a3m_database_extract.cwl
inputs:
- id: ff_index_ca3m_database_prefix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ff_index_a3m_database_prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ff_index_sequence_database_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: ff_index_header_database_prefix
  doc: ''
  type: string
  inputBinding:
    position: 3
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
- id: d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- a3m_database_extract
