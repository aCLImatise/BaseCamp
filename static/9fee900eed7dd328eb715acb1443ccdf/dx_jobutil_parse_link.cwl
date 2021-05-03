class: CommandLineTool
id: dx_jobutil_parse_link.cwl
inputs:
- id: in_no_project
  doc: "Ignore project ID in an extended dxlink - just print the\nobject ID\n"
  type: boolean?
  inputBinding:
    prefix: --no-project
- id: in_dx_link
  doc: Link to parse
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dxpy:0.307.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- dx-jobutil-parse-link
