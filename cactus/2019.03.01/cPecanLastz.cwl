class: CommandLineTool
id: cPecanLastz.cwl
inputs:
- id: table_only
  doc: "[=count]    just produce the target position table, don't search for seeds"
  type: boolean
  inputBinding:
    prefix: --tableonly
- id: write_segments
  doc: just produce the anchor segments table, don't perform gapped alignment
  type: File
  inputBinding:
    prefix: --writesegments
- id: write_capsule
  doc: write the target and seed word table to a file
  type: File
  inputBinding:
    prefix: --writecapsule
- id: target_capsule
  doc: read the target seed word table from a file (this replaces the target specifier)
  type: File
  inputBinding:
    prefix: --targetcapsule
- id: progress
  doc: report processing of every nth query
  type: string
  inputBinding:
    prefix: --progress
- id: progress
  doc: +masking=<n> report processing of every nth query, and include masking stats
    (useful with --masking)
  type: boolean
  inputBinding:
    prefix: --progress
- id: help
  doc: list information about file specifiers
  type: File
  inputBinding:
    prefix: --help
- id: help
  doc: list blastz-compatible shortcuts
  type: string
  inputBinding:
    prefix: --help
- id: help
  doc: list yasra-specific shortcuts
  type: string
  inputBinding:
    prefix: --help
outputs: []
cwlVersion: v1.1
baseCommand:
- cPecanLastz
