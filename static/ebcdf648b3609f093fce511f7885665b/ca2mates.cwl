class: CommandLineTool
id: ca2mates.cwl
inputs:
- id: in_asm_file
  doc: .asm file
  type: boolean?
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ca2mates
