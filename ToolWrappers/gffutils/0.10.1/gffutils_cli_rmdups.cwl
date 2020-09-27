class: CommandLineTool
id: gffutils_cli_rmdups.cwl
inputs:
- id: in_in_place
  doc: "Remove duplicates in place (overwrite current file.) (default:\nFalse)\n"
  type: boolean
  inputBinding:
    prefix: --in-place
- id: in_filename
  doc: GFF or GTF file to use.
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gffutils-cli
- rmdups
