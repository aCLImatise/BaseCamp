class: CommandLineTool
id: mb_site_merger.cwl
inputs:
- id: in_factor_table
  doc: ''
  type: string?
  inputBinding:
    prefix: --factor_table
- id: in_all_sites
  doc: mock_table
  type: string
  inputBinding:
    position: 0
- id: in_out_table
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mb-site-merger
