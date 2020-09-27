class: CommandLineTool
id: hgFindSpec.cwl
inputs:
- id: in_strict
  doc: Add spec to hgFindSpec only if its table(s) exist.
  type: boolean
  inputBinding:
    prefix: -strict
- id: in_ra_name
  doc: "- Specify a file name to use other than trackDb.ra\nfor the ra files."
  type: File
  inputBinding:
    prefix: -raName
- id: in_release
  doc: '|beta|public - Include trackDb entries with this release tag only.'
  type: string
  inputBinding:
    prefix: -release
- id: in_hg_find_spec_dot_sql
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hgFindSpec
