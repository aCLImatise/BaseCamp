class: CommandLineTool
id: tree_events_dlc.cwl
inputs:
- id: explicit
  doc: set to ignore extra lineages at implied speciation nodes
  type: boolean
  inputBinding:
    prefix: --explicit
- id: use_locus_recon
  doc: if set, use locus recon rather than MPR
  type: boolean
  inputBinding:
    prefix: --use-locus-recon
outputs: []
cwlVersion: v1.1
baseCommand:
- tree-events-dlc
