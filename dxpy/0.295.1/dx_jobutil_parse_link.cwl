class: CommandLineTool
id: ../../../dx_jobutil_parse_link.cwl
inputs:
- id: no_project
  doc: Ignore project ID in an extended dxlink - just print the object ID
  type: boolean
  inputBinding:
    prefix: --no-project
- id: dx_link
  doc: Link to parse
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dx-jobutil-parse-link
