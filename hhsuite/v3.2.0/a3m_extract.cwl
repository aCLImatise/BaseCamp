class: CommandLineTool
id: ../../../a3m_extract.cwl
inputs:
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
- id: input_file_vertical_line_stdin
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file_vertical_line_stdout
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
outputs: []
cwlVersion: v1.1
baseCommand:
- a3m_extract
