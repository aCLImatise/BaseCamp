class: CommandLineTool
id: .pbsv_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbsv:2.6.0--h9ee0642_0
cwlVersion: v1.1
baseCommand:
- .pbsv-post-link.sh
