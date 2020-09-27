class: CommandLineTool
id: ffindex_reduce.cwl
inputs:
- id: in_data_filename
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_index_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_program
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_program_args
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
- ffindex_reduce
