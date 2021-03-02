class: CommandLineTool
id: .pbbam_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbbam:1.6.0--h5b7e6e0_0
cwlVersion: v1.1
baseCommand:
- .pbbam-post-link.sh
