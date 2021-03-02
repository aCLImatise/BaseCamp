class: CommandLineTool
id: gffutils_cli_file..cwl
inputs:
- id: in_gff_utils_cli
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gffutils-cli
- file.
