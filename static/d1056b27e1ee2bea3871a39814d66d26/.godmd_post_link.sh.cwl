class: CommandLineTool
id: .godmd_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/godmd:1.0.0--hfad81c2_0
cwlVersion: v1.1
baseCommand:
- .godmd-post-link.sh
