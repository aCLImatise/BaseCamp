class: CommandLineTool
id: .t_coffee_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/t-coffee:13.45.0.4846264--he1b5a44_3
cwlVersion: v1.1
baseCommand:
- .t-coffee-post-link.sh
