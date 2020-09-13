class: CommandLineTool
id: ../../../afetch.cwl
inputs:
- id: in_index
  doc: ': construct indices for the database'
  type: boolean
  inputBinding:
    prefix: --index
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- afetch
