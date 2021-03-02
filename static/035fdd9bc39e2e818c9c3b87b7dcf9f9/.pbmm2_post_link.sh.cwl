class: CommandLineTool
id: .pbmm2_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbmm2:1.4.0--h56fc30b_0
cwlVersion: v1.1
baseCommand:
- .pbmm2-post-link.sh
