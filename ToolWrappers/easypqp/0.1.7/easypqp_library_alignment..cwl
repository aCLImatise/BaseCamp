class: CommandLineTool
id: easypqp_library_alignment..cwl
inputs:
- id: in_easy_pqp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_library
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_files
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- easypqp
- library
- alignment.
