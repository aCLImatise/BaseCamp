class: CommandLineTool
id: filter_seq.cwl
inputs:
- id: in_index
  doc: an index file of the copy file
  type: File
  inputBinding:
    prefix: -index
- id: in_good_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- filter_seq
