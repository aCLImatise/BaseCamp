class: CommandLineTool
id: gffutils_cli_common.cwl
inputs:
- id: in_db
  doc: "Database to use. If a GFF or GTF file is provided instead for\nthis argument,\
    \ a database will be created for you. This can take\nsome time (several minutes),\
    \ so it's best to create one ahead of\ntime."
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
- common
