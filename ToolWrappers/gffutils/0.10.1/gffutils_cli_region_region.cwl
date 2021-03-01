class: CommandLineTool
id: gffutils_cli_region_region.cwl
inputs:
- id: in_gff_utils_cli
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_region
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_db
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gffutils-cli
- region
- region
