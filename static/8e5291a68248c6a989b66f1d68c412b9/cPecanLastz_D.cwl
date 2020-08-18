class: CommandLineTool
id: ../../../cPecanLastz_D.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- cPecanLastz_D
