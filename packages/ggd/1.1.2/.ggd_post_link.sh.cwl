class: CommandLineTool
id: .ggd_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ggd:1.1.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- .ggd-post-link.sh
