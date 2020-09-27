class: CommandLineTool
id: glimmer3.cwl
inputs:
- id: in_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_icm_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_tag
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- glimmer3
