class: CommandLineTool
id: .funannotate_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/funannotate:1.8.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- .funannotate-post-link.sh
