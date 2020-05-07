class: CommandLineTool
id: get_gff_info_dbm_GFF_FILE.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gff_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- get-gff-info
- dbm
- GFF_FILE
