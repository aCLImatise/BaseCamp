class: CommandLineTool
id: .bam2fastx_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bam2fastx:1.3.1--he1c1bb9_0
cwlVersion: v1.1
baseCommand:
- .bam2fastx-post-link.sh
