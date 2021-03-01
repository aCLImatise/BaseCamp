class: CommandLineTool
id: .pbmarkdup_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbmarkdup:1.0.2--0
cwlVersion: v1.1
baseCommand:
- .pbmarkdup-post-link.sh
