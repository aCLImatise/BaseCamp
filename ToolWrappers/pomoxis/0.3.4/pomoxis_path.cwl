class: CommandLineTool
id: pomoxis_path.cwl
inputs:
- id: in_program
  doc: name of program.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pomoxis_path
