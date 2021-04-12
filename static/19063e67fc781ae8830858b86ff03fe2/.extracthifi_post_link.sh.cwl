class: CommandLineTool
id: .extracthifi_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/extracthifi:1.0.0--0
cwlVersion: v1.1
baseCommand:
- .extracthifi-post-link.sh
