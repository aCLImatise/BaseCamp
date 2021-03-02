class: CommandLineTool
id: .pbaa_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbaa:0.1.3--0
cwlVersion: v1.1
baseCommand:
- .pbaa-post-link.sh
