class: CommandLineTool
id: funnel_gce.cwl
inputs:
- id: in_run
  doc: 'Flags:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- funnel
- gce
