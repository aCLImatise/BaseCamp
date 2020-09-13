class: CommandLineTool
id: ../../../a3m_extract.cwl
inputs:
- id: in_q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
- id: in_d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: in_o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: boolean
  inputBinding:
    prefix: -i
- id: in_input_file_vertical_line_stdin
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file_vertical_line_stdout
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_ff_index_sequence_database_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_ff_index_header_database_prefix
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- a3m_extract
