class: CommandLineTool
id: dimspy_unzip.cwl
inputs:
- id: in_input
  doc: file[.zip]
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: "Directory to write to.\n"
  type: Directory
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dimspy
- unzip
