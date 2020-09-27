class: CommandLineTool
id: tree_events_dlcpar.cwl
inputs:
- id: in_explicit
  doc: set to ignore extra lineages at implied speciation
  type: boolean
  inputBinding:
    prefix: --explicit
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tree-events-dlcpar
