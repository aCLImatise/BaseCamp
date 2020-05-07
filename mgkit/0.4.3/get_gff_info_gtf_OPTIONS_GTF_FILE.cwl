class: CommandLineTool
id: get_gff_info_gtf_OPTIONS_GTF_FILE.cwl
inputs:
- id: gff_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gtf_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- get-gff-info
- gtf
- OPTIONS
- GTF_FILE
