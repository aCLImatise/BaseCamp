class: CommandLineTool
id: ../../../gffutils_cli_fetch.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gffutils-cli
- fetch
