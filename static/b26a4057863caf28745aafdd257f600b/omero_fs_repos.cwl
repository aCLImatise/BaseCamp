class: CommandLineTool
id: omero_fs_repos.cwl
inputs:
- id: style
  doc: use alternative output style (default=sql)
  type: string
  inputBinding:
    prefix: --style
- id: managed
  doc: repos only managed repositories
  type: boolean
  inputBinding:
    prefix: --managed
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- fs
- repos
