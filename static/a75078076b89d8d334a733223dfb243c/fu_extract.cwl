class: CommandLineTool
id: fu_extract.cwl
inputs:
- id: in_pattern
  doc: STRING
  type: boolean?
  inputBinding:
    prefix: --pattern
- id: in_min_len
  doc: INT
  type: boolean?
  inputBinding:
    prefix: --minlen
- id: in_maxlen
  doc: INT
  type: boolean?
  inputBinding:
    prefix: --maxlen
- id: in_list
  doc: FILE
  type: boolean?
  inputBinding:
    prefix: --list
- id: in_column
  doc: 'INT (default: 1)'
  type: boolean?
  inputBinding:
    prefix: --column
- id: in_s
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_input_file_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_note
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_example
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_that
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fu-extract
