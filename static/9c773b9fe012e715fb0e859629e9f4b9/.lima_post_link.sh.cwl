class: CommandLineTool
id: .lima_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/lima:2.0.0--0
cwlVersion: v1.1
baseCommand:
- .lima-post-link.sh
