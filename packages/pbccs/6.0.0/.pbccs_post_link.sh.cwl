class: CommandLineTool
id: .pbccs_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbccs:6.0.0--1
cwlVersion: v1.1
baseCommand:
- .pbccs-post-link.sh
