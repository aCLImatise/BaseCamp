class: CommandLineTool
id: msdir.cwl
inputs:
- id: in_b
  doc: '[ --brief ]        : display brief listing [default]'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_display_detailed_listing
  doc: '[ --detailed ]     : display detailed listing (tabular)'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_display_sourcelevel_metadata
  doc: '[ --full ]         : display all source-level metadata'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_type
  doc: "Size      Last Modified   Name\rNo MS sources found.                     \
    \                      "
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/proteowizard:3.0.9992
cwlVersion: v1.1
baseCommand:
- msdir
