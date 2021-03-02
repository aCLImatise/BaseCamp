class: CommandLineTool
id: .phigaro_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phigaro:2.3.0--pyh7b7c402_1
cwlVersion: v1.1
baseCommand:
- .phigaro-post-link.sh
