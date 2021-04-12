class: CommandLineTool
id: searchgui.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/searchgui:4.0.25--h779adbc_2
cwlVersion: v1.1
baseCommand:
- searchgui
