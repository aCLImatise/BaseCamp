class: CommandLineTool
id: itero_assemble_command.cwl
inputs:
- id: in_it_ero
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_assemble
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
- itero
- assemble
- command
