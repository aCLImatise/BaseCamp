class: CommandLineTool
id: get_gff_info_gtf_GFF_FILE.cwl
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
- id: gtf_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- get-gff-info
- gtf
- GFF_FILE
