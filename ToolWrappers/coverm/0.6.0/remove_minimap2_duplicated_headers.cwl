class: CommandLineTool
id: remove_minimap2_duplicated_headers.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/coverm:0.6.0--hc216eb9_0
cwlVersion: v1.1
baseCommand:
- remove_minimap2_duplicated_headers
