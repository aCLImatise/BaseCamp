class: CommandLineTool
id: tree_events_dlcpar.cwl
inputs:
- id: explicit
  doc: set to ignore extra lineages at implied speciation nodes
  type: boolean
  inputBinding:
    prefix: --explicit
outputs: []
cwlVersion: v1.1
baseCommand:
- tree-events-dlcpar
