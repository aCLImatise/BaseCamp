class: CommandLineTool
id: mb_site_merger.cwl
inputs:
- id: in_factor_table
  doc: ''
  type: string
  inputBinding:
    prefix: --factor_table
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-site-merger
