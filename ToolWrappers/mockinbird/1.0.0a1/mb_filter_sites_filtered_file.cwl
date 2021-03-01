class: CommandLineTool
id: mb_filter_sites_filtered_file.cwl
inputs:
- id: in_padding_bp
  doc: ''
  type: string?
  inputBinding:
    prefix: --padding_bp
- id: in_mb_filter_sites
  doc: ''
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
- mb-filter-sites
- filtered_file
