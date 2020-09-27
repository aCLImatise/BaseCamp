class: CommandLineTool
id: mkdna6idx.cwl
inputs:
- id: in_index_name
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
- mkdna6idx
