class: CommandLineTool
id: 2bwt_builder.cwl
inputs:
- id: in_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_index
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_prefix
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
- 2bwt-builder
