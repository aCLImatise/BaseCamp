class: CommandLineTool
id: ../../../gffutils_cli_region_region.cwl
inputs:
- id: gff_utils_cli
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_1
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: db
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: var_3
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- gffutils-cli
- region
- region
