class: CommandLineTool
id: .isoseq3_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/isoseq3:3.4.0--0
cwlVersion: v1.1
baseCommand:
- .isoseq3-post-link.sh
