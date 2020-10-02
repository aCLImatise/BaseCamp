class: CommandLineTool
id: funnel_dashboard.cwl
inputs:
- id: in_server
  doc: (default "http://localhost:8000")
  type: long
  inputBinding:
    prefix: --server
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- funnel
- dashboard
