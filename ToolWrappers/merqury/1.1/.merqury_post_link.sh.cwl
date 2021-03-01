class: CommandLineTool
id: .merqury_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/merqury:1.1--0
cwlVersion: v1.1
baseCommand:
- .merqury-post-link.sh
