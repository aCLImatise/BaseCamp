class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hgFindSpec.cwl
inputs:
- id: release
  doc: '|beta|public - Include trackDb entries with this release tag only.'
  type: string
  inputBinding:
    prefix: -release
- id: hg_find_spec_dot_sql
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: hg_root
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- hgFindSpec
