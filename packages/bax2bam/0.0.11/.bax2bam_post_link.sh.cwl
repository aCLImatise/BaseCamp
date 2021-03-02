class: CommandLineTool
id: .bax2bam_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bax2bam:0.0.11--0
cwlVersion: v1.1
baseCommand:
- .bax2bam-post-link.sh
