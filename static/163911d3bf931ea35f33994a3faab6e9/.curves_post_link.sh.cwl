class: CommandLineTool
id: .curves_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/curves:3.0.0--hc99cbb1_0
cwlVersion: v1.1
baseCommand:
- .curves-post-link.sh
