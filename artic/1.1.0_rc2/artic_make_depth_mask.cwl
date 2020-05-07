class: CommandLineTool
id: artic_make_depth_mask.cwl
inputs:
- id: ignore_deletions
  doc: if set, positional depth counts will ignore reads with reference deletions
    (i.e. evaluates positional depths on ref matches, not read span
  type: boolean
  inputBinding:
    prefix: --ignore-deletions
outputs: []
cwlVersion: v1.1
baseCommand:
- artic_make_depth_mask
