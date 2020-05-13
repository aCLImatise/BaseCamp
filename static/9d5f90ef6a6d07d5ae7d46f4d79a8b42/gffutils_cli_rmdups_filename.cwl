class: CommandLineTool
id: gffutils_cli_rmdups_filename.cwl
inputs:
- id: filename
  doc: GFF or GTF file to use.
  type: File
  inputBinding:
    position: 0
- id: in_place
  doc: 'Remove duplicates in place (overwrite current file.) (default: False)'
  type: boolean
  inputBinding:
    prefix: --in-place
outputs: []
cwlVersion: v1.1
baseCommand:
- gffutils-cli
- rmdups
- filename
