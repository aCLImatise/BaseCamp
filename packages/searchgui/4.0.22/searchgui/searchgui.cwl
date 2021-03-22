class: CommandLineTool
id: searchgui.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/searchgui:4.0.22--h516909a_0
cwlVersion: v1.1
baseCommand:
- searchgui
