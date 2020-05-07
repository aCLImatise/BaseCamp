class: CommandLineTool
id: hgFindSpec.cwl
inputs:
- id: org_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: hg_find_spec
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: hg_find_spec_sql
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: hg_root
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: release
  doc: '|beta|public - Include trackDb entries with this release tag only.'
  type: string
  inputBinding:
    prefix: -release
outputs: []
cwlVersion: v1.1
baseCommand:
- hgFindSpec
