class: CommandLineTool
id: fpa_rename.cwl
inputs:
- id: in_input
  doc: Rename reads with value in path passed as parameter
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: Write rename table in path passed as parameter
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fpa
- rename
