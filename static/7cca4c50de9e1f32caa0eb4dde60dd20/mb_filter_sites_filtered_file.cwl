class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mb_filter_sites_filtered_file.cwl
inputs:
- id: padding_bp
  doc: ''
  type: string
  inputBinding:
    prefix: --padding_bp
- id: mb_filter_sites
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-filter-sites
- filtered_file
