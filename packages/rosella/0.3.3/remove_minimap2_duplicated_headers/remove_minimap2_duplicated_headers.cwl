class: CommandLineTool
id: remove_minimap2_duplicated_headers.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rosella:0.3.3--h443a992_0
cwlVersion: v1.1
baseCommand:
- remove_minimap2_duplicated_headers
