class: CommandLineTool
id: .checkv_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/checkv:0.7.0--py_1
cwlVersion: v1.1
baseCommand:
- .checkv-post-link.sh
