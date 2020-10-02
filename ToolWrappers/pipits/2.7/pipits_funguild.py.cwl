class: CommandLineTool
id: pipits_funguild.py.cwl
inputs:
- id: in_input_otu_table
  doc: '[REQUIRED] Input OTU table generated from pipits_process.'
  type: File
  inputBinding:
    prefix: -i
- id: in_output_funguild_formatted
  doc: '[REQUIRED] Output FUNGuild formatted OTU table.'
  type: string
  inputBinding:
    prefix: -o
- id: in_converts
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_otu
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_tables
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_into
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_fun_guild
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_formatted
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_table_dot
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pipits_funguild.py
