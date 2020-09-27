class: CommandLineTool
id: itero_check_check.cwl
inputs:
- id: in_it_ero
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_check
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- itero
- check
- check
